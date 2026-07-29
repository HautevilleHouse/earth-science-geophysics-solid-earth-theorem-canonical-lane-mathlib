import EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SolidEarthWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse