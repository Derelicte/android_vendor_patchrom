.class final Lcom/lbe/security/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/w;->a:Lcom/lbe/security/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/ui/w;->a:Lcom/lbe/security/ui/MainActivity;

    invoke-static {v0}, Lcom/lbe/security/ui/MainActivity;->d(Lcom/lbe/security/ui/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public final onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/ui/w;->a:Lcom/lbe/security/ui/MainActivity;

    invoke-static {v0}, Lcom/lbe/security/ui/MainActivity;->d(Lcom/lbe/security/ui/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public final onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
