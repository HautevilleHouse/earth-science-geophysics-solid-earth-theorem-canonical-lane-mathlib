import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure CrustalDeformationRheologyPackage where
  stressTensor : Type u
  strainRate : Type v
  flowLaw : Type w
  brittleDuctileTransition : Prop
  viscousCreepDefined : Prop
  faultYieldCriterion : Prop

structure CrustalDeformationRheologyEvidence (C : CrustalDeformationRheologyPackage) where
  brittleDuctileTransitionClosed : C.brittleDuctileTransition
  viscousCreepDefinedClosed : C.viscousCreepDefined
  faultYieldCriterionClosed : C.faultYieldCriterion

def CrustalDeformationRheologyClosed (C : CrustalDeformationRheologyPackage) : Prop :=
  C.brittleDuctileTransition ∧ C.viscousCreepDefined ∧ C.faultYieldCriterion

theorem crustal_deformation_rheology_closed_from_evidence
    (C : CrustalDeformationRheologyPackage) (E : CrustalDeformationRheologyEvidence C) :
    CrustalDeformationRheologyClosed C := by
  exact And.intro E.brittleDuctileTransitionClosed
    (And.intro E.viscousCreepDefinedClosed E.faultYieldCriterionClosed)

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse
