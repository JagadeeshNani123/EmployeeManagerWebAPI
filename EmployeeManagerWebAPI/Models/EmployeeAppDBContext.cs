using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeeManagerWebAPI.Models
{
    public class EmployeeAppDBContext : DbContext
    {
        public EmployeeAppDBContext(DbContextOptions<EmployeeAppDBContext> options) : base(options)
        {
                
        }
        public DbSet<Employee> Employees { get; set; }

        //protected override void OnModelCreating(ModelBuilder modelBuilder)
        //{
        //    base.OnModelCreating(modelBuilder);
        //    modelBuilder.Entity<Employee>(e => e.Property(o => o.EmployeeID).HasColumnType("int(3)").HasConversion<short>());
        //}
    }
}
