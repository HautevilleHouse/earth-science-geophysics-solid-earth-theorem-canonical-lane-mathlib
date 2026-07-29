import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure SeismicWavePropagationPackage where
  earthModel : Type u
  waveSpeed : Type v
  rayPath : Type w
  travelTimeEquation : Prop
  travelTimeEquationClosed : travelTimeEquation

structure SeismicWavePropagationEvidence (S : SeismicWavePropagationPackage) where
  travelTimeEquationClosed : S.travelTimeEquation

def SeismicWavePropagationClosed (S : SeismicWavePropagationPackage) : Prop :=
  S.travelTimeEquation

theorem seismic_wave_propagation_closed_from_evidence (S : SeismicWavePropagationPackage) (E : SeismicWavePropagationEvidence S) : SeismicWavePropagationClosed S := by
  exact E.travelTimeEquationClosed

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse