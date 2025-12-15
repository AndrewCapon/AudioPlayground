#include "DataTypes.h"
#include "SimpleSineMaster.h"

int main(void)
{
    DataType samples[cBlockSamples];
    uint32_t debug[cBlockSamples];
    FrequencyType frequency = 100.0;
    PhaseType accumulator = 0.0;
    PhaseType phaseInc = FrequencyToAccumPerSample(frequency);

    FILE *fp = fopen("SimpleSineMaster.csv","w");
	if (!fp) {
		printf("Can't open file\n");
        return -1;
	}

    for (int iter = 0; iter < 100; iter++)
    {
        SimpleSineMaster(accumulator, phaseInc, samples);
        for(int sample = 0; sample < cBlockSize; sample++)
        {
            fprintf(fp,"%f, 0\n", samples[sample].to_float());
        }
        
    }

    fclose(fp);

    return 0;
}