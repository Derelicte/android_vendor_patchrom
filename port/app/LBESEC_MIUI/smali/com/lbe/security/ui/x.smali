.class final Lcom/lbe/security/ui/x;
.super Landroid/support/v13/app/FragmentPagerAdapter;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/MainActivity;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/x;->a:Lcom/lbe/security/ui/MainActivity;

    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final getItem(I)Landroid/app/Fragment;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/lbe/security/ui/x;->a:Lcom/lbe/security/ui/MainActivity;

    invoke-static {v0}, Lcom/lbe/security/ui/MainActivity;->a(Lcom/lbe/security/ui/MainActivity;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/x;->a:Lcom/lbe/security/ui/MainActivity;

    new-instance v1, Lcom/lbe/security/ui/t;

    invoke-direct {v1}, Lcom/lbe/security/ui/t;-><init>()V

    invoke-static {v0, v1}, Lcom/lbe/security/ui/MainActivity;->a(Lcom/lbe/security/ui/MainActivity;Landroid/app/Fragment;)V

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/ui/x;->a:Lcom/lbe/security/ui/MainActivity;

    invoke-static {v0}, Lcom/lbe/security/ui/MainActivity;->a(Lcom/lbe/security/ui/MainActivity;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/lbe/security/ui/x;->a:Lcom/lbe/security/ui/MainActivity;

    invoke-static {v0}, Lcom/lbe/security/ui/MainActivity;->b(Lcom/lbe/security/ui/MainActivity;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/ui/x;->a:Lcom/lbe/security/ui/MainActivity;

    new-instance v1, Lcom/lbe/security/ui/s;

    invoke-direct {v1}, Lcom/lbe/security/ui/s;-><init>()V

    invoke-static {v0, v1}, Lcom/lbe/security/ui/MainActivity;->b(Lcom/lbe/security/ui/MainActivity;Landroid/app/Fragment;)V

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/ui/x;->a:Lcom/lbe/security/ui/MainActivity;

    invoke-static {v0}, Lcom/lbe/security/ui/MainActivity;->b(Lcom/lbe/security/ui/MainActivity;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/lbe/security/ui/x;->a:Lcom/lbe/security/ui/MainActivity;

    invoke-static {v0}, Lcom/lbe/security/ui/MainActivity;->c(Lcom/lbe/security/ui/MainActivity;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/ui/x;->a:Lcom/lbe/security/ui/MainActivity;

    new-instance v1, Lcom/lbe/security/ui/ak;

    invoke-direct {v1}, Lcom/lbe/security/ui/ak;-><init>()V

    invoke-static {v0, v1}, Lcom/lbe/security/ui/MainActivity;->c(Lcom/lbe/security/ui/MainActivity;Landroid/app/Fragment;)V

    :cond_2
    iget-object v0, p0, Lcom/lbe/security/ui/x;->a:Lcom/lbe/security/ui/MainActivity;

    invoke-static {v0}, Lcom/lbe/security/ui/MainActivity;->c(Lcom/lbe/security/ui/MainActivity;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
