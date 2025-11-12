#pragma endian little

#include <std/string.pat>
#include <std/mem.pat>
#include <std/io.pat>

namespace Chunks {

	struct Auftrag {
		// TODO: AUFTRAG
	};

	struct Auftrag2 {
		// TODO: AUFTRAG2
	};

	struct Auftrag4 {
		// TODO: AUFTRAG4

		// some numbers
		// mission objective in text form
		// credits

		// empty space here?

		// some more numbers
	};

	struct Bsh {
		// TODO: BSH
	};

	struct Custom {
		// TODO: CUSTOM
	};

	struct Handler {
		// TODO: HANDLER
	};

	struct Hirsch2 {
		// TODO: HIRSCH2
	};

	struct Insel3 {
		// TODO: INSEL3
	};

	struct Insel4 {
		// TODO: INSEL4
	};

	struct Insel5 {
		// TODO: INSEL5
	};

	struct InselHaus {
		// TODO: INSELHAUS
	};

	struct InselMaxFun {
		// TODO: INSEL_MAXFUN
	};

	struct Kontor2 {
		// TODO: KONTOR2
	};

	struct Markt2 {
		// TODO: MARKT2
	};

	struct Militar {
		// TODO: MILITAR
	};

	struct Name {
		// TODO: NAME
	};

	struct Player2 {
		// TODO: PLAYER2
	};

	struct Player3 {
		// TODO: PLAYER3
	};

	struct Player4 {
		// TODO: PLAYER4
	};

	struct ProdList2 {
		// TODO: PRODLIST2
	};

	struct RandTab {
		u16 random_table[512]; // or something
	};

	struct RohWachs2 {
		// TODO: ROHWACHS2
	};

	struct Ship4 {
		// TODO: SHIP4
	};

	struct Siedler {
		// TODO: SIEDLER
	};

	struct Soldat2 {
		// TODO: SOLDAT2
	};

	struct Soldat3 {
		// TODO: SOLDAT3
	};

	struct SoldatInsel {
		// TODO: SOLDATINSEL
	};

	struct Stadt3 {
		// TODO: STADT3
	};

	struct Stadt4 {
		// TODO: STADT4
	};

	struct Szene {
		// TODO: SZENE
	};

	struct SzeneGameID {
		u32 id;
	};

	struct SzeneKampagne {
		// TODO: SZENE_KAMPAGNE
	};

	struct SzeneMissNr {
		// TODO: SZENE_MISSNR
	};

	struct SzenePlayerMax {
		u32 number;
	};

	struct SzenePlayerMin {
		u32 number;
	};

	struct SzeneRanking {
		u32 number;
	};

	struct Timers {
		// TODO: TIMERS
	};

	struct Turm {
		// TODO: TURM
	};

	struct Werft {
		// TODO: WERFT
	};

	struct Wiff {
		u32 checksum;
	};

	struct Zei {
		// TODO: ZEI
	};
}

union ChunkData<auto chunk_type, auto size> {
	u8 chunk_data[size];

	if (std::string::starts_with(chunk_type, "AUFTRAG"))
		Chunks::Auftrag chunk_content;
	else if (std::string::starts_with(chunk_type, "AUFTRAG2"))
		Chunks::Auftrag2 chunk_content;
	else if (std::string::starts_with(chunk_type, "AUFTRAG4"))
		Chunks::Auftrag4 chunk_content;
	else if (std::string::starts_with(chunk_type, "BSH"))
		Chunks::Bsh chunk_content;
	else if (std::string::starts_with(chunk_type, "CUSTOM"))
		Chunks::Custom chunk_content;
	else if (std::string::starts_with(chunk_type, "HANDLER"))
		Chunks::Handler chunk_content;
	else if (std::string::starts_with(chunk_type, "HIRSCH2"))
		Chunks::Hirsch2 chunk_content;
	else if (std::string::starts_with(chunk_type, "INSEL3"))
		Chunks::Insel3 chunk_content;
	else if (std::string::starts_with(chunk_type, "INSEL4"))
		Chunks::Insel4 chunk_content;
	else if (std::string::starts_with(chunk_type, "INSEL5"))
		Chunks::Insel5 chunk_content;
	else if (std::string::starts_with(chunk_type, "INSELHAUS"))
		Chunks::InselHaus chunk_content;
	else if (std::string::starts_with(chunk_type, "INSEL_MAXFUN"))
		Chunks::InselMaxFun chunk_content;
	else if (std::string::starts_with(chunk_type, "KONTOR2"))
		Chunks::Kontor2 chunk_content;
	else if (std::string::starts_with(chunk_type, "MARKT2"))
		Chunks::Markt2 chunk_content;
	else if (std::string::starts_with(chunk_type, "MILITAR"))
		Chunks::Militar chunk_content;
	else if (std::string::starts_with(chunk_type, "NAME"))
		Chunks::Name chunk_content;
	else if (std::string::starts_with(chunk_type, "PLAYER2"))
		Chunks::Player2 chunk_content;
	else if (std::string::starts_with(chunk_type, "PLAYER3"))
		Chunks::Player3 chunk_content;
	else if (std::string::starts_with(chunk_type, "PLAYER4"))
		Chunks::Player4 chunk_content;
	else if (std::string::starts_with(chunk_type, "PRODLIST2"))
		Chunks::ProdList2 chunk_content;
	else if (std::string::starts_with(chunk_type, "RANDTAB"))
		Chunks::RandTab chunk_content;
	else if (std::string::starts_with(chunk_type, "ROHWACHS2"))
		Chunks::RohWachs2 chunk_content;
	else if (std::string::starts_with(chunk_type, "SHIP4"))
		Chunks::Ship4 chunk_content;
	else if (std::string::starts_with(chunk_type, "SIEDLER"))
		Chunks::Siedler chunk_content;
	else if (std::string::starts_with(chunk_type, "SOLDAT2"))
		Chunks::Soldat2 chunk_content;
	else if (std::string::starts_with(chunk_type, "SOLDAT3"))
		Chunks::Soldat3 chunk_content;
	else if (std::string::starts_with(chunk_type, "SOLDATINSEL"))
		Chunks::SoldatInsel chunk_content;
	else if (std::string::starts_with(chunk_type, "STADT3"))
		Chunks::Stadt3 chunk_content;
	else if (std::string::starts_with(chunk_type, "STADT4"))
		Chunks::Stadt4 chunk_content;
	else if (std::string::starts_with(chunk_type, "SZENE_GAMEID"))
		Chunks::SzeneGameID chunk_content;
	else if (std::string::starts_with(chunk_type, "SZENE_KAMPAGNE"))
		Chunks::SzeneKampagne chunk_content;
	else if (std::string::starts_with(chunk_type, "SZENE_MISSNR"))
		Chunks::SzeneMissNr chunk_content;
	else if (std::string::starts_with(chunk_type, "SZENE_PLAYERMAX"))
		Chunks::SzenePlayerMax chunk_content;
	else if (std::string::starts_with(chunk_type, "SZENE_PLAYERMIN"))
		Chunks::SzenePlayerMin chunk_content;
	else if (std::string::starts_with(chunk_type, "SZENE_RANKING"))
		Chunks::SzeneRanking chunk_content;
	else if (std::string::starts_with(chunk_type, "SZENE")) // after common prefix
		Chunks::Szene chunk_content;
	else if (std::string::starts_with(chunk_type, "TIMERS"))
		Chunks::Timers chunk_content;
	else if (std::string::starts_with(chunk_type, "TURM"))
		Chunks::Turm chunk_content;
	else if (std::string::starts_with(chunk_type, "WERFT"))
		Chunks::Werft chunk_content;
	else if (std::string::starts_with(chunk_type, "WIFF"))
		Chunks::Wiff chunk_content;
	else if (std::string::starts_with(chunk_type, "ZEI"))
		Chunks::Zei chunk_content;
	else
		std::print("unknown chunk type '{}'\n", chunk_type);
};

struct Chunk {
	char name[16];
	u32 size;
	ChunkData<name, size> data;
};

Chunk chunk[while(!std::mem::eof())] @ 0x00;

// # vi: ft=cpp
