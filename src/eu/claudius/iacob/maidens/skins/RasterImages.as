package eu.claudius.iacob.maidens.skins {
	public class RasterImages {
		public function RasterImages() {}

        [Embed(source="images/paperShredder.png")]
        public static const PAPER_SHREDDER : Class;

		[Embed(source="images/promptQuestion.png")]
		public static const PROMPT_QUESTION : Class;

		[Embed(source="images/promptInfo.png")]
		public static const PROMPT_INFO : Class;

		[Embed(source="images/promptError.png")]
		public static const PROMPT_ERROR : Class;
	}
}
