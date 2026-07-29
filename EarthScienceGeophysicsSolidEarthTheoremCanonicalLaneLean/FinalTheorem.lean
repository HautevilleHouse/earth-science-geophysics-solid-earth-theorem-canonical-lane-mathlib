import EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

def ConstrainedSolidEarthClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_solid_earth_endgame (A : AdmissibleClass) :
    ConstrainedSolidEarthClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse