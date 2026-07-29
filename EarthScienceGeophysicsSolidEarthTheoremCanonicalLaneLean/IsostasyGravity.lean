import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure IsostasyGravityPackage where
  crustalThicknessModel : Type u
  densityContrast : Type v
  gravityAnomaly : Type w
  airyHeightsCompensation : Prop
  flexuralRigidityIncluded : Prop
  regionalCompensation : Prop

structure IsostasyGravityEvidence (I : IsostasyGravityPackage) where
  airyHeightsCompensationClosed : I.airyHeightsCompensation
  flexuralRigidityIncludedClosed : I.flexuralRigidityIncluded
  regionalCompensationClosed : I.regionalCompensation

def IsostasyGravityClosed (I : IsostasyGravityPackage) : Prop :=
  I.airyHeightsCompensation ∧ I.flexuralRigidityIncluded ∧ I.regionalCompensation

theorem isostasy_gravity_closed_from_evidence
    (I : IsostasyGravityPackage) (E : IsostasyGravityEvidence I) :
    IsostasyGravityClosed I := by
  exact And.intro E.airyHeightsCompensationClosed
    (And.intro E.flexuralRigidityIncludedClosed E.regionalCompensationClosed)

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse