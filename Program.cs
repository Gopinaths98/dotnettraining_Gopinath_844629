using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Data.SqlClient;

namespace ConsoleApp33
{
    class Program
    {
        static void Main(string[] args)
        {
            List<data> obj = new List<data>();
            string str = "Data Source=BLT10121\\SQLEXPRESS;Initial Catalog=sample;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand com = new SqlCommand();
            com.CommandText = "select * from student s inner join enrollment e on s.stid= e.stid inner join course c on e.cid= c.cid ";
            com.Connection = con;

            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                int stid = int.Parse(reader[0].ToString());
                string sname = reader[1].ToString();
                int age = int.Parse(reader[2].ToString());
                int cid = int.Parse(reader[4].ToString());
                string cname = reader[7].ToString();
                int duration = int.Parse(reader[8].ToString());
                data db = new data(stid, sname, age, cid, cname, duration);
                obj.Add(db);
            }
            reader.Close();
            for (int i = 0; i < obj.Count; i++)
            {
                Console.WriteLine(obj[i].stid);
                Console.WriteLine(obj[i].sname);
            }
            con.Close();
            Console.WriteLine("sorting based on student name");
            obj.Sort(new snamecomparer());
            for (int i = 0; i < obj.Count; i++)
            {
                Console.WriteLine(obj[i].stid);
                Console.WriteLine(obj[i].sname);
            }

            Console.WriteLine("sorting based on course name");
            obj.Sort(new cnamecomparer());
            for (int i = 0; i < obj.Count; i++)
            {
                Console.WriteLine(obj[i].stid);
                Console.WriteLine(obj[i].sname);
            }
        }
       
    }
}
