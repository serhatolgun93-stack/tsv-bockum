-- TSV Bockum: vollständiger Import aus index.html (Stand 16.11.2026)
-- Erneutes Ausführen fügt keine doppelten Trainingszeiten/Ansprechpartner hinzu.
-- Vorhandene Daten werden nicht gelöscht. Bestehende App bleibt unverändert.
BEGIN;

INSERT INTO public.mannschaften (kuerzel,name) VALUES ('A1','A1') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('A2','A2') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('B1','B1') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('B2','B2') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('C1','C1') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('C2','C2') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('D1','D1') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('D2','D2') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('D3','D3') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('E1','E1') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('E2','E2') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('E3','E3') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('E4','E4') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('F1','F1') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('F2','F2') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('F3','F3') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('F4','F4') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('G1','G1') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('1. Mannschaft','1. Mannschaft') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('2. Mannschaft','2. Mannschaft') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('3. Mannschaft','3. Mannschaft') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('Ü32','Ü32') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('Ü40','Ü40') ON CONFLICT (kuerzel) DO NOTHING;
INSERT INTO public.mannschaften (kuerzel,name) VALUES ('Ü50','Ü50') ON CONFLICT (kuerzel) DO NOTHING;

INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'18:15'::time,'19:45'::time,'Kunstrasen V1+2' FROM public.mannschaften m WHERE m.kuerzel='A1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V1+2');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'19:45'::time,'21:15'::time,'Kunstrasen V1+2' FROM public.mannschaften m WHERE m.kuerzel='A1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Kunstrasen V1+2');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'18:15'::time,'19:45'::time,'Kunstrasen V1+2' FROM public.mannschaften m WHERE m.kuerzel='A1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V1+2');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Ferhat Sali','Trainer','01783552625','fas@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='A1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Ferhat Sali' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Serhat Olgun','Co-Trainer','015730882160','seo@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='A1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Serhat Olgun' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,1,'19:45'::time,'21:15'::time,'Kunstrasen V3+4' FROM public.mannschaften m WHERE m.kuerzel='A2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=1 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Kunstrasen V3+4');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'19:45'::time,'21:15'::time,'Kunstrasen V3+4' FROM public.mannschaften m WHERE m.kuerzel='A2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Kunstrasen V3+4');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Jens Amend','Trainer','01723067702','jae@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='A2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Jens Amend' AND p.rolle='Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'18:15'::time,'19:45'::time,'Kunstrasen V3+4' FROM public.mannschaften m WHERE m.kuerzel='B1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V3+4');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'18:15'::time,'19:45'::time,'Kunstrasen V3+4' FROM public.mannschaften m WHERE m.kuerzel='B1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V3+4');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'18:15'::time,'19:45'::time,'Kunstrasen V3+4' FROM public.mannschaften m WHERE m.kuerzel='B1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V3+4');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Dennis Ripkens','Trainer','015734760955','dri@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='B1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Dennis Ripkens' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Mariusz Pieczka','Co-Trainer','01634609839','mpc@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='B1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Mariusz Pieczka' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'18:15'::time,'19:45'::time,'Kunstrasen V1+2' FROM public.mannschaften m WHERE m.kuerzel='B2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V1+2');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'18:15'::time,'19:45'::time,'Kunstrasen V3+4' FROM public.mannschaften m WHERE m.kuerzel='B2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V3+4');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Ferdi Engelhardt','Trainer','015771338177','feh@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='B2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Ferdi Engelhardt' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Rene Lorenz','Co-Trainer','015151741977','rle@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='B2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Rene Lorenz' AND p.rolle='Co-Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Rebecca Scheelen','Betreuer','01736205449','res@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='B2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Rebecca Scheelen' AND p.rolle='Betreuer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,1,'18:15'::time,'19:45'::time,'Kunstrasen V1+2' FROM public.mannschaften m WHERE m.kuerzel='C1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=1 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V1+2');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'18:15'::time,'19:45'::time,'Kunstrasen V1+2' FROM public.mannschaften m WHERE m.kuerzel='C1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V1+2');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'18:15'::time,'19:45'::time,'Court' FROM public.mannschaften m WHERE m.kuerzel='C1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Court');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Johanna Nordling','Trainer','017621927190','jnd@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='C1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Johanna Nordling' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Robert Buchczyk','Co-Trainer','01762409597','rbu@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='C1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Robert Buchczyk' AND p.rolle='Co-Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Isaias Assegau','Co-Trainer','01787186259',NULL,true FROM public.mannschaften m WHERE m.kuerzel='C1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Isaias Assegau' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,1,'18:15'::time,'19:45'::time,'Kunstrasen V4' FROM public.mannschaften m WHERE m.kuerzel='C2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=1 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V4');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'18:15'::time,'19:45'::time,'Court' FROM public.mannschaften m WHERE m.kuerzel='C2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Court');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'18:15'::time,'19:45'::time,'Court' FROM public.mannschaften m WHERE m.kuerzel='C2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Court');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Joshua Sevenich','Trainer','015757902253',NULL,true FROM public.mannschaften m WHERE m.kuerzel='C2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Joshua Sevenich' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Marcel Schubert','Co-Trainer','016290044205',NULL,true FROM public.mannschaften m WHERE m.kuerzel='C2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Marcel Schubert' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,1,'16:45'::time,'18:15'::time,'Kunstrasen V3+4' FROM public.mannschaften m WHERE m.kuerzel='D1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=1 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V3+4');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'16:45'::time,'18:15'::time,'Kunstrasen V2' FROM public.mannschaften m WHERE m.kuerzel='D1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V2');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'17:45'::time,'19:00'::time,'Court' FROM public.mannschaften m WHERE m.kuerzel='D1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='17:45'::time AND t.ende='19:00'::time AND t.trainingsplatz='Court');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Werner Kempkens','Trainer','01739347950',NULL,true FROM public.mannschaften m WHERE m.kuerzel='D1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Werner Kempkens' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Oliver Hautz','Trainer','01715196720','oht@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='D1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Oliver Hautz' AND p.rolle='Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'16:45'::time,'18:15'::time,'Kunstrasen V1' FROM public.mannschaften m WHERE m.kuerzel='D2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V1');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'16:45'::time,'18:15'::time,'Kunstrasen V1' FROM public.mannschaften m WHERE m.kuerzel='D2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V1');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Ali Kaydok','Trainer','01783406797','aky@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='D2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Ali Kaydok' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Zeki Cilingir','Co-Trainer','01744019511','zcn@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='D2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Zeki Cilingir' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'16:45'::time,'18:15'::time,'Kunstrasen V3' FROM public.mannschaften m WHERE m.kuerzel='D3' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V3');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'16:45'::time,'18:15'::time,'Kunstrasen V4' FROM public.mannschaften m WHERE m.kuerzel='D3' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V4');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Moritz Lapp','Trainer','017684290470','mlp@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='D3' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Moritz Lapp' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Norman Lang','Co-Trainer','01638672858','nln@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='D3' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Norman Lang' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,1,'18:15'::time,'19:45'::time,'Kunstrasen V3' FROM public.mannschaften m WHERE m.kuerzel='E1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=1 AND t.beginn='18:15'::time AND t.ende='19:45'::time AND t.trainingsplatz='Kunstrasen V3');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'16:45'::time,'18:15'::time,'Court' FROM public.mannschaften m WHERE m.kuerzel='E1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Court');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'16:45'::time,'18:15'::time,'Kunstrasen V3' FROM public.mannschaften m WHERE m.kuerzel='E1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V3');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Dennis Honecker','Trainer','01624288078','dho@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='E1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Dennis Honecker' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Maximilian Honecker','Co-Trainer',NULL,NULL,true FROM public.mannschaften m WHERE m.kuerzel='E1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Maximilian Honecker' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,1,'16:45'::time,'18:15'::time,'Kunstrasen V2' FROM public.mannschaften m WHERE m.kuerzel='E2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=1 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V2');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'16:45'::time,'18:15'::time,'Halle' FROM public.mannschaften m WHERE m.kuerzel='E2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Halle');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Sascha Mrozek','Trainer','01725186661','smz@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='E2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Sascha Mrozek' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Patrick Ellguth','Co-Trainer',NULL,NULL,true FROM public.mannschaften m WHERE m.kuerzel='E2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Patrick Ellguth' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'16:45'::time,'18:15'::time,'Kunstrasen V2' FROM public.mannschaften m WHERE m.kuerzel='E3' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V2');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'16:45'::time,'18:15'::time,'Kunstrasen V2' FROM public.mannschaften m WHERE m.kuerzel='E3' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V2');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Manuel Gülez-Bork','Trainer','01782697630','mgb@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='E3' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Manuel Gülez-Bork' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Uwe Johannes','Trainer','01722107471','ujn@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='E3' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Uwe Johannes' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Philipp Wittfeld','Co-Trainer','01608811711','phw@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='E3' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Philipp Wittfeld' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'16:45'::time,'18:15'::time,'Kunstrasen V1' FROM public.mannschaften m WHERE m.kuerzel='E4' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V1');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'16:45'::time,'18:15'::time,'Kunstrasen V1' FROM public.mannschaften m WHERE m.kuerzel='E4' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V1');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Max Johne','Trainer','015123452638','mjo@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='E4' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Max Johne' AND p.rolle='Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'16:45'::time,'18:15'::time,'Kunstrasen V3' FROM public.mannschaften m WHERE m.kuerzel='F1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V3');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'17:30'::time,'18:30'::time,'Halle' FROM public.mannschaften m WHERE m.kuerzel='F1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='17:30'::time AND t.ende='18:30'::time AND t.trainingsplatz='Halle');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Ugur Dündar','Trainer','01782062307','ugd@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='F1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Ugur Dündar' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Marcel Ghioc','Trainer','01729061697','mag@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='F1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Marcel Ghioc' AND p.rolle='Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'16:45'::time,'18:15'::time,'Kunstrasen V4' FROM public.mannschaften m WHERE m.kuerzel='F2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V4');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'17:45'::time,'18:45'::time,'Halle' FROM public.mannschaften m WHERE m.kuerzel='F2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='17:45'::time AND t.ende='18:45'::time AND t.trainingsplatz='Halle');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'16:45'::time,'18:15'::time,'Kunstrasen V3' FROM public.mannschaften m WHERE m.kuerzel='F2' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V3');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Thomas Schmidtke','Trainer','015783058272',NULL,true FROM public.mannschaften m WHERE m.kuerzel='F2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Thomas Schmidtke' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Yen Binh Troung','Co-Trainer','015252491367',NULL,true FROM public.mannschaften m WHERE m.kuerzel='F2' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Yen Binh Troung' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'16:00'::time,'17:00'::time,'Halle' FROM public.mannschaften m WHERE m.kuerzel='F3' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='16:00'::time AND t.ende='17:00'::time AND t.trainingsplatz='Halle');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'16:45'::time,'18:15'::time,'Kunstrasen V4' FROM public.mannschaften m WHERE m.kuerzel='F3' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V4');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Sascha Haefs','Trainer','01788940731',NULL,true FROM public.mannschaften m WHERE m.kuerzel='F3' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Sascha Haefs' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Jan Stöffges','Trainer',NULL,NULL,true FROM public.mannschaften m WHERE m.kuerzel='F3' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Jan Stöffges' AND p.rolle='Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,1,'16:45'::time,'18:15'::time,'Kunstrasen V1' FROM public.mannschaften m WHERE m.kuerzel='F4' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=1 AND t.beginn='16:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V1');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'16:30'::time,'17:45'::time,'Halle' FROM public.mannschaften m WHERE m.kuerzel='F4' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='16:30'::time AND t.ende='17:45'::time AND t.trainingsplatz='Halle');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'15:45'::time,'18:15'::time,'Kunstrasen V2' FROM public.mannschaften m WHERE m.kuerzel='F4' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='15:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Kunstrasen V2');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Benjamin Vallée','Trainer','015156050805','bev@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='F4' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Benjamin Vallée' AND p.rolle='Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'15:45'::time,'18:15'::time,'Court' FROM public.mannschaften m WHERE m.kuerzel='G1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='15:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Court');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'15:45'::time,'18:15'::time,'Court' FROM public.mannschaften m WHERE m.kuerzel='G1' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='15:45'::time AND t.ende='18:15'::time AND t.trainingsplatz='Court');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Max Schimpf','Trainer','017679086886','msi@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='G1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Max Schimpf' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Darius Foltin','Co-Trainer','01633655555',NULL,true FROM public.mannschaften m WHERE m.kuerzel='G1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Darius Foltin' AND p.rolle='Co-Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Regina Salven','Betreuer','01742697048','rsl@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='G1' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Regina Salven' AND p.rolle='Betreuer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'19:45'::time,'21:15'::time,'Kunstrasen V1+2' FROM public.mannschaften m WHERE m.kuerzel='1. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Kunstrasen V1+2');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'19:45'::time,'21:15'::time,'Kunstrasen V1+2' FROM public.mannschaften m WHERE m.kuerzel='1. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Kunstrasen V1+2');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'19:45'::time,'21:15'::time,'Kunstrasen V1+2' FROM public.mannschaften m WHERE m.kuerzel='1. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Kunstrasen V1+2');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Leslaw Goluch','Trainer','015774224613','lgl@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='1. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Leslaw Goluch' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Marcel Blaschkowitz','Co-Trainer','01622382597','mbl@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='1. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Marcel Blaschkowitz' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'19:45'::time,'21:15'::time,'Kunstrasen V3+4' FROM public.mannschaften m WHERE m.kuerzel='2. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Kunstrasen V3+4');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,3,'19:45'::time,'21:15'::time,'Kunstrasen V3+4' FROM public.mannschaften m WHERE m.kuerzel='2. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=3 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Kunstrasen V3+4');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'19:45'::time,'21:15'::time,'Court' FROM public.mannschaften m WHERE m.kuerzel='2. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Court');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Stefan Herting','Trainer','015756294679','shr@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='2. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Stefan Herting' AND p.rolle='Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,2,'19:45'::time,'21:15'::time,'Court' FROM public.mannschaften m WHERE m.kuerzel='3. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=2 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Court');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,4,'19:45'::time,'21:15'::time,'Kunstrasen V3+4' FROM public.mannschaften m WHERE m.kuerzel='3. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=4 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Kunstrasen V3+4');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Tom Stevens','Trainer','015787472404','tse@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='3. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Tom Stevens' AND p.rolle='Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Joshua Sevenich','Co-Trainer','015757902253',NULL,true FROM public.mannschaften m WHERE m.kuerzel='3. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Joshua Sevenich' AND p.rolle='Co-Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Jan Van Pol','Co-Trainer',NULL,NULL,true FROM public.mannschaften m WHERE m.kuerzel='3. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Jan Van Pol' AND p.rolle='Co-Trainer');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Max Sillenberg','Co-Trainer',NULL,NULL,true FROM public.mannschaften m WHERE m.kuerzel='3. Mannschaft' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Max Sillenberg' AND p.rolle='Co-Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,5,'19:00'::time,'20:45'::time,'Court' FROM public.mannschaften m WHERE m.kuerzel='Ü32' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=5 AND t.beginn='19:00'::time AND t.ende='20:45'::time AND t.trainingsplatz='Court');
INSERT INTO public.team_personen (mannschaft_id,name,rolle,telefon,email,aktiv)
SELECT m.id,'Andreas Konsratowicz','Trainer',NULL,'aka@tsv-bockum.de',true FROM public.mannschaften m WHERE m.kuerzel='Ü32' AND NOT EXISTS (SELECT 1 FROM public.team_personen p WHERE p.mannschaft_id=m.id AND p.name='Andreas Konsratowicz' AND p.rolle='Trainer');
INSERT INTO public.trainingseinheiten (mannschaft_id,wochentag,beginn,ende,trainingsplatz)
SELECT m.id,1,'19:45'::time,'21:15'::time,'Kunstrasen V1+2' FROM public.mannschaften m WHERE m.kuerzel='Ü50' AND NOT EXISTS (SELECT 1 FROM public.trainingseinheiten t WHERE t.mannschaft_id=m.id AND t.wochentag=1 AND t.beginn='19:45'::time AND t.ende='21:15'::time AND t.trainingsplatz='Kunstrasen V1+2');

COMMIT;

SELECT (SELECT COUNT(*) FROM public.mannschaften) AS mannschaften, (SELECT COUNT(*) FROM public.trainingseinheiten) AS trainingseinheiten, (SELECT COUNT(*) FROM public.team_personen) AS ansprechpartner;
