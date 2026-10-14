# Changelog

All notable changes to this skill are documented here. Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [1.1.0] - 2026-10-14

### Changed
- Language now defaults to the user's language (Chinese-first for Chinese users); English only on explicit request. Fixed the previous "always English" default after a mobile-readability complaint.
- Added "Multi-day itinerary" layout: trunk-and-branch map + theme strategy block + day cards (D0..DN), for trips longer than one day.
- Map density rules: node labels <= 6 characters, vertical trunk with side branches, bubbles only for key drive times.

### Added
- Rule: re-align misaligned tips from the source table and flag them in the delivery notes; never write hotel info that is actually flight info.

## [1.0.0] - 2026-10-14

### Added
- `SKILL.md`: trigger conditions, information-extraction table, build workflow, layout/type/color spec, map-drawing rules, pre-delivery checklist, map-compliance rules.
- `templates/journal-map-portrait.html`: portrait single-page layout, 80 placeholders, inline CSS + inline SVG, no external image dependencies.
- `references/svg-layout-notes.md`: SVG coordinate skeleton, panel-height formula, add/remove node procedure, troubleshooting table.
- Plugin manifest (`.codebuddy-plugin/plugin.json`) and one-click installers (`install.sh`, `install.bat`).

### Notes
- Template contains **no** real place names, dates, personal names, train/flight numbers or hotels — safe to distribute.
