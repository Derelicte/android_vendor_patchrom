.class public Lcom/lbe/security/ui/MainActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private a:Landroid/app/Fragment;

.field private b:Landroid/app/Fragment;

.field private c:Landroid/app/Fragment;

.field private d:Landroid/support/v13/app/FragmentPagerAdapter;

.field private e:Landroid/app/ActionBar$TabListener;

.field private f:Landroid/app/ActionBar;

.field private g:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/lbe/security/ui/x;

    invoke-virtual {p0}, Lcom/lbe/security/ui/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lbe/security/ui/x;-><init>(Lcom/lbe/security/ui/MainActivity;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/lbe/security/ui/MainActivity;->d:Landroid/support/v13/app/FragmentPagerAdapter;

    new-instance v0, Lcom/lbe/security/ui/w;

    invoke-direct {v0, p0}, Lcom/lbe/security/ui/w;-><init>(Lcom/lbe/security/ui/MainActivity;)V

    iput-object v0, p0, Lcom/lbe/security/ui/MainActivity;->e:Landroid/app/ActionBar$TabListener;

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/ui/MainActivity;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->a:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic a(Lcom/lbe/security/ui/MainActivity;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/MainActivity;->a:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic b(Lcom/lbe/security/ui/MainActivity;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->b:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic b(Lcom/lbe/security/ui/MainActivity;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/MainActivity;->b:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic c(Lcom/lbe/security/ui/MainActivity;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->c:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic c(Lcom/lbe/security/ui/MainActivity;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/MainActivity;->c:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic d(Lcom/lbe/security/ui/MainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x30d0015

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/MainActivity;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/MainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/lbe/security/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lbe/security/ui/MainActivity;->g:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/lbe/security/ui/MainActivity;->d:Landroid/support/v13/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/lbe/security/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    iget-object v1, p0, Lcom/lbe/security/ui/MainActivity;->e:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v1, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f07007a

    invoke-virtual {p0, v2}, Lcom/lbe/security/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    iget-object v2, p0, Lcom/lbe/security/ui/MainActivity;->e:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v2, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f07007b

    invoke-virtual {p0, v3}, Lcom/lbe/security/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    iget-object v3, p0, Lcom/lbe/security/ui/MainActivity;->e:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v3, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    return-void

    :catch_0
    move-exception v0

    const v0, 0x103006e

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/MainActivity;->setTheme(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    :try_start_0
    const-string v2, "mCurRootView"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    const-string v2, "mServedView"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    const-string v2, "mNextServedView"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/lbe/security/ui/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/LBEApplication;

    invoke-virtual {v0}, Lcom/lbe/security/LBEApplication;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/MainActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method
