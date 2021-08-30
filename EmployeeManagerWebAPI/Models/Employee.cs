using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeeManagerWebAPI.Models
{
    [Table("Employee")]
    public class Employee
    {
        [Column("EmployeeID")]
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Required(ErrorMessage = "Employee Id is required")]
        [Display(Name = "Employee Id")]
        public int EmployeeID { set; get; }

        [Column("FirstName")]
        [Required(ErrorMessage = "First Name is required")]
        [Display(Name = "First Name")]
        [StringLength(10, ErrorMessage = "First name must be less than 10 characters")]
        public string FirstName { set; get; }

        [Column("LastName")]
        [Required(ErrorMessage = "Employyee Name is required")]
        [Display(Name = "Last Name")]
        [StringLength(20, ErrorMessage ="Last name must be less than 20 characters")]
        public string LastName { set; get; }

        [Column("Title")]
        [Required(ErrorMessage = "Title Name is required")]
        [Display(Name = "Title")]
        [StringLength(20, ErrorMessage = "Title must be less than 20 characters")]
        public string Title { set; get; }

        [Column("BirthDate")]
        [Required(ErrorMessage = "Birth date is required")]
        [Display(Name = "Birth Date")]
        public DateTime BirthDate { set; get; }

        [Column("HireDate")]
        [Required(ErrorMessage = "Hire Date is required")]
        [Display(Name = "Hire Date")]
        public DateTime HireDate { set; get; }

        [Column("Notes")]
        [Required(ErrorMessage = "Notes Name is required")]
        [Display(Name = "Notes")]
        [StringLength(500, ErrorMessage = "Notes must be less than 500 characters")]
        public string Notes { set; get; }





    }
}
