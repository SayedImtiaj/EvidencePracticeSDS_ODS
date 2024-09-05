using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

using System.ComponentModel;

namespace EvidencePracticeSDS_ODS.DAL
{
    public class Course
    {
        public int CourseID { get; set; }
        public string CourseName { get; set; }
        public string CourseDuration { get; set; }
    }

    public class Course_DAL
    {
        public static string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public static SqlConnection con;
        public static SqlCommand cmd;

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Course> GetCourses()
        {
            List<Course> coursesList = new List<Course>();

            using (con = new SqlConnection(conString))
            {
                cmd = new SqlCommand("SELECT * FROM Course", con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Course course = new Course();
                    course.CourseID = Convert.ToInt32(reader["CourseID"]);
                    course.CourseName = reader["CourseName"].ToString();
                    course.CourseDuration = reader["CourseDuration"].ToString();

                    coursesList.Add(course);
                }
                return coursesList;
            }
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public static void InsertData(Course course)
        {
            using (con = new SqlConnection(conString))
            {
                cmd = new SqlCommand("INSERT INTO Course(CourseName,CourseDuration) VALUES (@courseName, @courseDuration)", con);
                cmd.Parameters.AddWithValue("CourseName", course.CourseName);
                cmd.Parameters.AddWithValue("CourseDuration", course.CourseDuration);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public static int UpdateData(Course original_Course, Course course)
        {
            int updateCount = 0;
            using (con = new SqlConnection(conString))
            {
                cmd = new SqlCommand("UPDATE Course SET CourseName = @courseName, CourseDuration = @courseDuration WHERE CourseID = @original_courseId AND CourseName = @original_courseName AND CourseDuration = @original_courseDuration", con);

                cmd.Parameters.AddWithValue("CourseName", course.CourseName);
                cmd.Parameters.AddWithValue("CourseDuration", course.CourseDuration);

                cmd.Parameters.AddWithValue("original_courseId", original_Course.CourseID);
                cmd.Parameters.AddWithValue("original_courseName", original_Course.CourseName);
                cmd.Parameters.AddWithValue("original_courseDuration", original_Course.CourseDuration);

                con.Open();
                updateCount = cmd.ExecuteNonQuery();
            }
            return updateCount;
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public static int DeleteData(Course course)
        {
            int deleteCount = 0;
            using (con = new SqlConnection(conString))
            {
                cmd = new SqlCommand("DELETE FROM Course WHERE CourseID = @courseId AND CourseName = @courseName AND CourseDuration = @courseDuration", con);
                cmd.Parameters.AddWithValue("CourseID", course.CourseID);
                cmd.Parameters.AddWithValue("CourseName", course.CourseName);
                cmd.Parameters.AddWithValue("CourseDuration", course.CourseDuration);

                con.Open();
                deleteCount = cmd.ExecuteNonQuery();
            }
            return deleteCount;
        }
        
    }
}