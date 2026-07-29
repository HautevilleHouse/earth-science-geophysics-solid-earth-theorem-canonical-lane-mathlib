import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure MantleConvectionPackage where
  viscosityModel : Type u
  thermalGradient : Type v
  rayleighNumber : Type w
  plumeStructure : Prop
  plateDrivingForces : Prop
  heatFluxBoundary : Prop

structure MantleConvectionEvidence (M : MantleConvectionPackage) where
  plumeStructureClosed : M.plumeStructure
  plateDrivingForcesClosed : M.plateDrivingForces
  heatFluxBoundaryClosed : M.heatFluxBoundary

def MantleConvectionClosed (M : MantleConvectionPackage) : Prop :=
  M.plumeStructure ∧ M.plateDrivingForces ∧ M.heatFluxBoundary

theorem mantle_convection_closed_from_evidence
    (M : MantleConvectionPackage) (E : MantleConvectionEvidence M) :
    MantleConvectionClosed M := by
  exact And.intro E.plumeStructureClosed
    (And.intro E.plateDrivingForcesClosed E.heatFluxBoundaryClosed)

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse