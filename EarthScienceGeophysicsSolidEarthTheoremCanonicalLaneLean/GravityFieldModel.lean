import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure GravityFieldModelPackage where
  gravitationalPotential : Type u
  densityDistribution : Type v
  poissonEquation : Prop
  boundaryCondition : Prop
  solutionUniqueness : Prop
  poissonEquationClosed : poissonEquation
  boundaryConditionClosed : boundaryCondition
  solutionUniquenessClosed : solutionUniqueness

structure GravityFieldModelEvidence (G : GravityFieldModelPackage) where
  poissonEquationClosed : G.poissonEquation
  boundaryConditionClosed : G.boundaryCondition
  solutionUniquenessClosed : G.solutionUniqueness

def GravityFieldModelClosed (G : GravityFieldModelPackage) : Prop :=
  G.poissonEquation ∧ G.boundaryCondition ∧ G.solutionUniqueness

theorem gravity_field_model_closed_from_evidence (G : GravityFieldModelPackage) (E : GravityFieldModelEvidence G) : GravityFieldModelClosed G := by
  exact And.intro E.poissonEquationClosed (And.intro E.boundaryConditionClosed E.solutionUniquenessClosed)

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse