import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure MantleConvectionModelPackage where
  viscosityField : Type u
  thermalGradient : Type v
  densityAnomaly : Type w
  rayleighNumberDefined : Prop
  buoyancyDrivenFlow : Prop
  convectionCellStructure : Prop

structure MantleConvectionModelEvidence (M : MantleConvectionModelPackage) where
  rayleighNumberDefinedClosed : M.rayleighNumberDefined
  buoyancyDrivenFlowClosed : M.buoyancyDrivenFlow
  convectionCellStructureClosed : M.convectionCellStructure

def MantleConvectionModelClosed (M : MantleConvectionModelPackage) : Prop :=
  M.rayleighNumberDefined ∧ M.buoyancyDrivenFlow ∧ M.convectionCellStructure

theorem mantle_convection_model_closed_from_evidence
    (M : MantleConvectionModelPackage) (E : MantleConvectionModelEvidence M) :
    MantleConvectionModelClosed M := by
  exact And.intro E.rayleighNumberDefinedClosed
    (And.intro E.buoyancyDrivenFlowClosed E.convectionCellStructureClosed)

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse
