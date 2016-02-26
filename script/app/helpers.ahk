GetRandomLine(File) {
	LineCount := TF_CountLines(File)
	Random, x, 1, LineCount
	FileReadLine, RandomLine, %File%, x

	Return RandomLine
}