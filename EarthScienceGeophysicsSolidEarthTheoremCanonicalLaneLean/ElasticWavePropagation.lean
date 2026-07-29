import EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean.EarthStructure

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure ElasticWavePropagationPackage (E : EarthStructurePackage) where
  waveEquation : Prop
  pWaveVelocity : Prop
  sWaveVelocity : Prop
  attenuationModel : Prop
  anisotropy : Prop

structure ElasticWavePropagationEvidence {E : EarthStructurePackage} (W : ElasticWavePropagationPackage E) where
  waveEquationClosed : W.waveEquation
  pWaveVelocityClosed : W.pWaveVelocity
  sWaveVelocityClosed : W.sWaveVelocity
  attenuationModelClosed : W.attenuationModel
  anisotropyClosed : W.anisotropy

def ElasticWavePropagationClosed {E : EarthStructurePackage} (W : ElasticWavePropagationPackage E) : Prop :=
  W.waveEquation ∧ W.pWaveVelocity ∧ W.sWaveVelocity ∧ W.attenuationModel ∧ W.anisotropy

theorem elastic_wave_propagation_closed_from_evidence
    {E : EarthStructurePackage} (W : ElasticWavePropagationPackage E)
    (Ev : ElasticWavePropagationEvidence W) : ElasticWavePropagationClosed W := by
  exact And.intro Ev.waveEquationClosed
    (And.intro Ev.pWaveVelocityClosed
      (And.intro Ev.sWaveVelocityClosed
        (And.intro Ev.attenuationModelClosed Ev.anisotropyClosed)))

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse