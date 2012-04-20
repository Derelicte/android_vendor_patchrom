.class public final Lcom/lbe/security/ui/t;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/lbe/security/service/privacy/i;


# instance fields
.field private a:Landroid/widget/Switch;

.field private b:Landroid/widget/Switch;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/lbe/security/service/privacy/k;

.field private h:Lcom/lbe/security/service/a/g;

.field private i:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private a([I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lbe/security/ui/t;->g:Lcom/lbe/security/service/privacy/k;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/lbe/security/service/privacy/k;->a(Ljava/lang/Boolean;[I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;

    iget-object v3, p0, Lcom/lbe/security/ui/t;->h:Lcom/lbe/security/service/a/g;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/lbe/security/service/a/g;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/lbe/security/ui/t;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/t;->i:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private a()V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/lbe/security/ui/t;->i:Landroid/content/SharedPreferences;

    const-string v1, "enable_su_service"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/lbe/security/ui/t;->i:Landroid/content/SharedPreferences;

    const-string v2, "enable_hips_service"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/lbe/security/ui/t;->a:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/lbe/security/ui/t;->a:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/lbe/security/ui/t;->a:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/lbe/security/ui/t;->b:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/lbe/security/ui/t;->b:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/lbe/security/ui/t;->b:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lbe/security/bean/l;->a:Lcom/lbe/security/bean/g;

    invoke-virtual {v0}, Lcom/lbe/security/bean/g;->b()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lbe/security/ui/t;->a([I)I

    move-result v0

    iget-object v2, p0, Lcom/lbe/security/ui/t;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070080

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/lbe/security/bean/l;->d:Lcom/lbe/security/bean/g;

    invoke-virtual {v0}, Lcom/lbe/security/bean/g;->b()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lbe/security/ui/t;->a([I)I

    move-result v0

    iget-object v1, p0, Lcom/lbe/security/ui/t;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070084

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/ui/t;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070081

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/ui/t;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/lbe/security/ui/t;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/t;->a:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic c(Lcom/lbe/security/ui/t;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/t;->b:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/lbe/security/bean/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/lbe/security/ui/t;->a()V

    return-void
.end method

.method public final a(Lcom/lbe/security/bean/e;I)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/lbe/security/bean/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/lbe/security/ui/t;->a()V

    return-void
.end method

.method public final c(Lcom/lbe/security/bean/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/lbe/security/ui/t;->a()V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const v4, 0x1080027

    const v3, 0x104000a

    const/high16 v2, 0x104

    iget-object v0, p0, Lcom/lbe/security/ui/t;->a:Landroid/widget/Switch;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lbe/security/ui/aa;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/aa;-><init>(Lcom/lbe/security/ui/t;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lbe/security/ui/z;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/z;-><init>(Lcom/lbe/security/ui/t;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lbe/security/ui/ae;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/ae;-><init>(Lcom/lbe/security/ui/t;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/ui/t;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_su_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lbe/security/ui/t;->b:Landroid/widget/Switch;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lbe/security/ui/ad;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/ad;-><init>(Lcom/lbe/security/ui/t;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lbe/security/ui/ac;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/ac;-><init>(Lcom/lbe/security/ui/t;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lbe/security/ui/ab;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/ab;-><init>(Lcom/lbe/security/ui/t;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/lbe/security/ui/t;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_hips_service"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/lbe/security/ui/t;->c:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/lbe/security/ui/PermissionListRoot;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_permission"

    const/16 v3, 0x200

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/ui/t;->d:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/t;->g:Lcom/lbe/security/service/privacy/k;

    new-instance v0, Lcom/lbe/security/service/a/g;

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lbe/security/service/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lbe/security/ui/t;->h:Lcom/lbe/security/service/a/g;

    const v0, 0x7f030001

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090001

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/lbe/security/ui/t;->a:Landroid/widget/Switch;

    const v0, 0x7f090004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/lbe/security/ui/t;->b:Landroid/widget/Switch;

    const v0, 0x7f090002

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lbe/security/ui/t;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f090005

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lbe/security/ui/t;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f090003

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/t;->e:Landroid/widget/TextView;

    const v0, 0x7f090006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/t;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lbe/security/ui/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/t;->i:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/lbe/security/ui/t;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/t;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/t;->h:Lcom/lbe/security/service/a/g;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/g;->a()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/t;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/t;->g:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->b(Lcom/lbe/security/service/privacy/i;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/t;->g:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/i;)V

    iget-object v0, p0, Lcom/lbe/security/ui/t;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/lbe/security/ui/t;->a()V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "enable_su_service"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/lbe/security/ui/t;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "enable_hips_service"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lbe/security/ui/t;->a()V

    goto :goto_0
.end method
