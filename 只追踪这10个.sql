-- 只留第 6 步定的 10 个对标账号，以前加的账号和它们的帖子全部删掉。
-- ⚠️ 删掉就救不回来。先跑「第 1 段」看会删什么，确认没问题再跑「第 2 段」。

-- ============ 第 1 段：先看会删掉什么（不会改任何东西） ============
select '会删掉的账号' as 类别, username as 名字 from competitors
 where lower(username) not in (
   'her.duit', 'surayaror', 'clevergirlfinance', 'herfirst100k', 'thefinancialdiet',
   'kathfinanceconsultant', 'julianlui1021', 'catherine._.goh', 'bryanlowwww', 'your.richbff'
 )
union all
select '会删掉的帖子数', count(*)::text from posts
 where lower(coalesce(competitor, '')) not in (
   'her.duit', 'surayaror', 'clevergirlfinance', 'herfirst100k', 'thefinancialdiet',
   'kathfinanceconsultant', 'julianlui1021', 'catherine._.goh', 'bryanlowwww', 'your.richbff'
 );


-- ============ 第 2 段：真的删除（确认第 1 段没问题再跑） ============
-- 要跑的时候，把下面每一行开头的「-- 」拿掉，再按 Run。

-- delete from posts
--  where lower(coalesce(competitor, '')) not in (
--    'her.duit', 'surayaror', 'clevergirlfinance', 'herfirst100k', 'thefinancialdiet',
--    'kathfinanceconsultant', 'julianlui1021', 'catherine._.goh', 'bryanlowwww', 'your.richbff'
--  );
-- delete from competitors
--  where lower(username) not in (
--    'her.duit', 'surayaror', 'clevergirlfinance', 'herfirst100k', 'thefinancialdiet',
--    'kathfinanceconsultant', 'julianlui1021', 'catherine._.goh', 'bryanlowwww', 'your.richbff'
--  );
-- select username, active from competitors order by username;
