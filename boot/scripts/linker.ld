ENTRY(_init)
OUTPUT_FORMAT(binary)

SECTIONS
{
	. = 0x7C00;

	.text.init :
	{
		*(.text.init);
		*(.text.init.data);
	}

	.signature : AT(0x7DFE)
	{
		BYTE(0x55);
		BYTE(0xaa);
	}

	.text : AT(0x7E00)
	{
		*(.text);
	}

	.data :
	{
		*(.data);
	}

	.bss :
	{
		*(.bss);
	}

	.rodata :
	{
		*(.rodata);
	}
}
