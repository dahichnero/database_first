using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Hehe.Models;

public partial class SotrudContext : DbContext
{
    public SotrudContext()
    {
    }

    public SotrudContext(DbContextOptions<SotrudContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Sotrudnik> Sotrudniks { get; set; }

    public virtual DbSet<Speciality> Specialities { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=(localdb)\\MSSQLLocalDB;Database=sotrud;Trusted_Connection=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Sotrudnik>(entity =>
        {
            entity.Property(e => e.Birthday).HasColumnType("date");
            entity.Property(e => e.Passport).HasMaxLength(12);
            entity.Property(e => e.Phone).HasMaxLength(100);

            entity.HasOne(d => d.SpecialtyNavigation).WithMany(p => p.Sotrudniks)
                .HasForeignKey(d => d.Specialty)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Sotrudniks_Specialities");
        });

        modelBuilder.Entity<Speciality>(entity =>
        {
            entity.Property(e => e.SpecialityName).HasMaxLength(50);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
