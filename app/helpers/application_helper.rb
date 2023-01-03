module ApplicationHelper
  def default_meta_tags
    {
      site: 'mirume',
      title: 'mirume|パーソナルカラーの色識別クイズアプリ',
      reverse: true,
      separator: '|',
      description: 'パーソナルカラーの色識別トレーニングができるクイズアプリ。128色からランダムに出題します。間違えた色を自動抽出して出題も可能。効率的に学習できます。色を見る目を磨きたいなら、色識別クイズアプリmirume',
      keywords: 'パーソナルカラー',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'mirume',
        title: 'mirume|パーソナルカラーの色識別クイズアプリ',
        description: 'パーソナルカラーの色識別トレーニングができるクイズアプリ。128色からランダムに出題。色を見る目を磨きたいなら、色識別クイズアプリmirume。', 
        type: 'website',
        url: request.original_url,
        image: image_url('twitter-ogp.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
      }
    }
  end
end
