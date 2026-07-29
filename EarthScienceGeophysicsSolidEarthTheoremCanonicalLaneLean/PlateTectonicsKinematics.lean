import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure PlateTectonicsKinematicsPackage where
  plateGeometry : Type u
  rotationPole : Type v
  relativeMotionEquation : Prop
  eulerPoleConstrained : Prop
  motionConsistency : Prop
  relativeMotionEquationClosed : relativeMotionEquation
  eulerPoleConstrainedClosed : eulerPoleConstrained
  motionConsistencyClosed : motionConsistency

structure PlateTectonicsKinematicsEvidence (P : PlateTectonicsKinematicsPackage) where
  relativeMotionEquationClosed : P.relativeMotionEquation
  eulerPoleConstrainedClosed : P.eulerPoleConstrained
  motionConsistencyClosed : P.motionConsistency

def PlateTectonicsKinematicsClosed (P : PlateTectonicsKinematicsPackage) : Prop :=
  P.relativeMotionEquation ∧ P.eulerPoleConstrained ∧ P.motionConsistency

theorem plate_tectonics_kinematics_closed_from_evidence (P : PlateTectonicsKinematicsPackage) (E : PlateTectonicsKinematicsEvidence P) : PlateTectonicsKinematicsClosed P := by
  exact And.intro E.relativeMotionEquationClosed (And.intro E.eulerPoleConstrainedClosed E.motionConsistencyClosed)

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse