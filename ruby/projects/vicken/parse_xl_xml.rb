#!/bin/ruby

def parse_csv_xml(a, b, c)

		item = '
		<item editor="com.oilspace.apps.aspect.items.instruments2.FreightInstrument">
				<ivar name="aspect-edit-id" id="TC2" />
				<ivar name="aspect-edit-id" code="TCC" />
				<ivar name="aspect-edit-name">TC2 Cont - USAC 37KT Baltic</ivar>
				<ivar name="aspect-edit-location" id="LOCID:UNDEF"/>
				<ivar name="aspect-edit-pid" id="Freight">Freight</ivar>
				<ivar name="aspect-edit-calendar">IcS</ivar>
				<ivar name="aspect-edit-symbol">TC2</ivar>
				<ivar name="aspect-edit-worldscale-symbol"/>
		</item>
		'
		return i2
end

ro = parse_csv_xml("a", "b", "c")
puts ro
