using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace UniDirectoryCreator
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private List<UniversityUnit> units;
        private int unitCount;
        public string[] folders = { 
            "General",
            "Lectures",
            "Labs",
            "Assignments",
            "Practice Exams"
        };

        public MainWindow()
        {
            InitializeComponent();
            Initialise();
        }

        private void Initialise()
        {
            units = new List<UniversityUnit>();
            dgUnits.DataContext = units;
            dgUnits.ItemsSource = units;
        }

        #region Event Handlers
        private void btnBrowseBaseDirectory_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.FolderBrowserDialog picker = new System.Windows.Forms.FolderBrowserDialog();
            DialogResult result = picker.ShowDialog();
            string dir = string.Empty;
            if (result == System.Windows.Forms.DialogResult.OK)
            {
                txtBaseDirectory.Text = picker.SelectedPath;
            }
        }

        private void btnCreateDirectories_Click(object sender, RoutedEventArgs e)
        {            
            // For each unit
            for (int i = 0; i < units.Count; i++)
            {
                // Create unit folder
                UniversityUnit unit = units[i];
                string unitDir = System.IO.Path.Combine(txtBaseDirectory.Text, unit.unitCode);

                // Create sub-folders
                foreach (string directory in folders)
                {
                    string dir = System.IO.Path.Combine(unitDir, directory);
                    System.IO.Directory.CreateDirectory(dir);
                }

                // Create sub-lecture folders
                for (int j = 0; j < unit.lectureCount; j++)
                {
                    string dir = System.IO.Path.Combine(unitDir, "Lectures");
                    dir = System.IO.Path.Combine(dir, "Lecture " + (j+1));
                    System.IO.Directory.CreateDirectory(dir);
                }

                // Create sub-lab folders
                for (int j = 0; j < unit.labCount; j++)
                {
                    string dir = System.IO.Path.Combine(unitDir, "Labs");
                    dir = System.IO.Path.Combine(dir, "Lab " + (j + 1));
                    System.IO.Directory.CreateDirectory(dir);
                }

                // Create sub-lab folders
                for (int j = 0; j < unit.assignmentCount; j++)
                {
                    string dir = System.IO.Path.Combine(unitDir, "Assignments");
                    dir = System.IO.Path.Combine(dir, "Assignment " + (j + 1));
                    System.IO.Directory.CreateDirectory(dir);
                }
            }
        }
        #endregion
    }

    public class UniversityUnit
    {
        public string unitCode { get; set; } 
        public int assignmentCount { get; set; }
        public int labCount { get; set; }
        public int lectureCount { get; set; }
    }
}
