namespace TRMapp
{
    using System;
    using System.Data.Entity;
    using System.Linq;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public class Model1 : DbContext
    {

        public Model1()
            : base("str")
        {
        }
        public virtual DbSet<login> logins { get; set; }
        public virtual DbSet<role> roles { get; set; }
        public virtual DbSet<request> requests { get; set; }
    }
    
    
    public class login
    {
        [Key]
        public int uid { get; set; }
        public string uname { get; set; }
        public string password { get; set; }
        public int roleid { get; set; }
    }
    public class role
    {
        [Key]
        public int roleid { get; set; }
        public string rolename { get; set; }
    }
    public class request
    {
        [Key]
        public int reqid { get; set; }
        public string skill { get; set; }
        public DateTime startdate { get; set; }
        public DateTime enddate { get; set; }
        public string status { get; set; }
        public int trainerid { get; set; }
        public int exeid { get; set; }

    }
}