module.exports = {
  title: 'Tech Interview docs',
  tagline: 'Tech Interview docs',
  url: 'https://version2-interview-wiki-cafemug.endpoint.ainize.ai/',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  favicon: 'img/circle.ico',
  organizationName: 'facebook', // Usually your GitHub org/user name.
  projectName: 'Tech Interview docs', // Usually your repo name.
  themeConfig: {
    navbar: {
      title: 'Tech Interview docs with CoCo',
      logo: {
        alt: 'My Site Logo',
        src: 'img/rect.ico',
      },
      items: [
        {
          to: 'docs/',
          activeBasePath: 'docs',
          label: 'Wiki',
          position: 'left',
        },
        {
          href: 'https://github.com/Cafemug',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Docs',
          items: [
            {
              label: '전공 지식',
              to: 'docs/',
            },
            {
              label: '기술 인터뷰',
              to: 'docs/interview',
            },
          ],
        },
        {
          title: 'Community',
          items: [
            {
              label: '1일 1커밋 오픈채팅방',
              href: 'https://open.kakao.com/o/g99LzEgb',
            },
            {
              label: 'Ainize',
              href: 'https://ainize.ai/',
            },
          ],
        },
        {
          title: 'More',
          items: [
            {
              label: 'Blog',
              href: 'https://hyanghope.tistory.com/',
            },
            {
              label: 'GitHub',
              href: 'https://hyanghope.tistory.com/',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} My Project, Inc. Built with Docusaurus.`,
    },
    
  },
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          // Please change this to your repo.
          editUrl:
            'https://github.com/facebook/docusaurus/edit/master/website/',
        },
        blog: {
          showReadingTime: true,
          // Please change this to your repo.
          editUrl:
            'https://github.com/facebook/docusaurus/edit/master/website/blog/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      },
    ],
  ],
};
