import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure PlateTectonicsPackage where
  plateVelocity : ℝ
  plateThickness : ℝ
  convergenceRate : ℝ
  subductionAngle : ℝ
  crustalDensity : ℝ
  mantleDensity : ℝ

structure PlateTectonicsEvidence (P : PlateTectonicsPackage) where
  plateVelocityPositive : P.plateVelocity > 0
  plateThicknessPositive : P.plateThickness > 0
  convergenceRateNonnegative : P.convergenceRate ≥ 0
  subductionAngleBetweenZeroAndNinety : 0 < P.subductionAngle ∧ P.subductionAngle < 90
  crustalDensityPositive : P.crustalDensity > 0
  mantleDensityPositive : P.mantleDensity > 0

def PlateTectonicsClosed (P : PlateTectonicsPackage) : Prop :=
  P.plateVelocity > 0 ∧ P.plateThickness > 0 ∧ P.convergenceRate ≥ 0 ∧ (0 < P.subductionAngle ∧ P.subductionAngle < 90) ∧ P.crustalDensity > 0 ∧ P.mantleDensity > 0

theorem plate_tectonics_closed_from_evidence (P : PlateTectonicsPackage) (ev : PlateTectonicsEvidence P) :
    PlateTectonicsClosed P := by
  exact And.intro ev.plateVelocityPositive (And.intro ev.plateThicknessPositive (And.intro ev.convergenceRateNonnegative (And.intro ev.subductionAngleBetweenZeroAndNinety (And.intro ev.crustalDensityPositive ev.mantleDensityPositive))))

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse