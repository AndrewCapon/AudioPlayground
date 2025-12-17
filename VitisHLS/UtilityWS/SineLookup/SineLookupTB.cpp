#include "DataTypes.h"
#include "SineLookup.h"

int main(void)
{
    DataType samples[cBlockSamples];
    uint32_t debug[cBlockSamples];
    FrequencyType frequency = 100.0;
    PhaseType accumulator = 0.0;
    PhaseType phaseInc = FrequencyToAccumPerSample(frequency);

    FILE *fp = fopen("SineLookup.csv","w");
	if (!fp) {
		printf("Can't open file\n");
        return -1;
	}

    PhaseType index = 0.0f;
    for (int i=0; i < 4096*2; i++)
    {
        DataType  value = SineLookup(index);
        fprintf(fp,"%f, 0\n", value.to_float());
        index += PhaseType(0.5f);
    }

    fclose(fp);

    return 0;
}