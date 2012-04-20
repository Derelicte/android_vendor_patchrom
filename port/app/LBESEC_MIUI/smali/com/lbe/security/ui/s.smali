.class public final Lcom/lbe/security/ui/s;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/lbe/security/service/privacy/i;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ListView;

.field private c:Ljava/util/List;

.field private d:Lcom/lbe/security/ui/m;

.field private e:Landroid/content/SharedPreferences;

.field private f:Lcom/lbe/security/service/privacy/k;

.field private g:Lcom/lbe/security/service/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lbe/security/ui/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lbe/security/ui/s;->f:Lcom/lbe/security/service/privacy/k;

    iget-object v1, p0, Lcom/lbe/security/ui/s;->g:Lcom/lbe/security/service/a/g;

    sget-object v3, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v3}, Lcom/lbe/security/bean/g;->b()[I

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/a/g;[I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/ui/s;->c:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/a/f;

    invoke-direct {v1}, Lcom/lbe/security/service/a/f;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/lbe/security/ui/s;->d:Lcom/lbe/security/ui/m;

    invoke-virtual {v0}, Lcom/lbe/security/ui/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/lbe/security/ui/s;->e:Landroid/content/SharedPreferences;

    const-string v1, "enable_hips_service"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/s;->e:Landroid/content/SharedPreferences;

    const-string v1, "enable_su_service"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/ui/s;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lbe/security/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f07007c

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lbe/security/ui/s;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/a/i;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/i;->a()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/a/i;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/i;->a()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/lbe/security/ui/s;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/a/i;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/lbe/security/ui/s;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lbe/security/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07007d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/lbe/security/bean/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/lbe/security/ui/s;->a()V

    return-void
.end method

.method public final a(Lcom/lbe/security/bean/e;I)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/lbe/security/bean/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/lbe/security/ui/s;->a()V

    return-void
.end method

.method public final c(Lcom/lbe/security/bean/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/lbe/security/ui/s;->a()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f030007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/s;->f:Lcom/lbe/security/service/privacy/k;

    new-instance v0, Lcom/lbe/security/service/a/g;

    invoke-virtual {p0}, Lcom/lbe/security/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lbe/security/service/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lbe/security/ui/s;->g:Lcom/lbe/security/service/a/g;

    invoke-virtual {p0}, Lcom/lbe/security/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/s;->e:Landroid/content/SharedPreferences;

    const v0, 0x7f090021

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/s;->a:Landroid/widget/TextView;

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lbe/security/ui/s;->b:Landroid/widget/ListView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/ui/s;->c:Ljava/util/List;

    new-instance v0, Lcom/lbe/security/ui/m;

    invoke-virtual {p0}, Lcom/lbe/security/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lbe/security/ui/s;->c:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/lbe/security/ui/m;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lbe/security/ui/s;->d:Lcom/lbe/security/ui/m;

    iget-object v0, p0, Lcom/lbe/security/ui/s;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lbe/security/ui/s;->d:Lcom/lbe/security/ui/m;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/lbe/security/ui/s;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/s;->g:Lcom/lbe/security/service/a/g;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/g;->a()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/lbe/security/ui/s;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/a/i;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lbe/security/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_package_uid"

    invoke-virtual {v0}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->e()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/lbe/security/ui/s;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/s;->f:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->b(Lcom/lbe/security/service/privacy/i;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/s;->f:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/i;)V

    invoke-direct {p0}, Lcom/lbe/security/ui/s;->a()V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method
