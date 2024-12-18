using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    public class Prog_5
    {
    }

    class Hospital
    {
        public virtual string HospitalDetails()
        {
            throw new NotImplementedException("Subclasses should implement this method");
        }
    }

    class Apollo : Hospital
    {
        public override string HospitalDetails()
        {
            return "Apollo Hospitals: Known for state-of-the-art healthcare services and cutting-edge technology.";
        }
    }

    class Wockhardt : Hospital
    {
        public override string HospitalDetails()
        {
            return "Wockhardt Hospitals: Renowned for cardiac care and advanced medical treatments.";
        }
    }

    class Gokul_Superspeciality : Hospital
    {
        public override string HospitalDetails()
        {
            return "Gokul Superspeciality Hospitals: Expert in multi-speciality treatments with a focus on patient care.";
        }
    }

}
