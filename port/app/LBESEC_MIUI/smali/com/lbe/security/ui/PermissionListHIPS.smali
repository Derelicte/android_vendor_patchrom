.class public Lcom/lbe/security/ui/PermissionListHIPS;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Landroid/app/ActionBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/widget/Switch;

.field private f:Landroid/content/SharedPreferences;

.field private g:Lcom/lbe/security/service/privacy/k;

.field private h:Lcom/lbe/security/service/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/ui/PermissionListHIPS;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic b(Lcom/lbe/security/ui/PermissionListHIPS;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->e:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->e:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lbe/security/bean/l;->d:Lcom/lbe/security/bean/g;

    invoke-virtual {v0}, Lcom/lbe/security/bean/g;->b()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/ui/PermissionListHIPS;->g:Lcom/lbe/security/service/privacy/k;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/lbe/security/service/privacy/k;->a(Ljava/lang/Boolean;[I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->b:Landroid/widget/TextView;

    const v3, 0x7f070085

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/lbe/security/ui/PermissionListHIPS;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;

    iget-object v4, p0, Lcom/lbe/security/ui/PermissionListHIPS;->h:Lcom/lbe/security/service/a/g;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/lbe/security/service/a/g;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->b:Landroid/widget/TextView;

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->e:Landroid/widget/Switch;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/lbe/security/ui/d;

    invoke-direct {v2, p0}, Lcom/lbe/security/ui/d;-><init>(Lcom/lbe/security/ui/PermissionListHIPS;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/lbe/security/ui/c;

    invoke-direct {v2, p0}, Lcom/lbe/security/ui/c;-><init>(Lcom/lbe/security/ui/PermissionListHIPS;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lbe/security/ui/b;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/b;-><init>(Lcom/lbe/security/ui/PermissionListHIPS;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_hips_service"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionListHIPS;->a()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x30d0015

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/PermissionListHIPS;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/PermissionListHIPS;->setContentView(I)V

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->g:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionListHIPS;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->a:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->a:Landroid/app/ActionBar;

    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->a:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->e:Landroid/widget/Switch;

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    const/16 v2, 0x15

    iput v2, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/lbe/security/ui/PermissionListHIPS;->a:Landroid/app/ActionBar;

    invoke-virtual {v2, v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->a:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    new-instance v0, Lcom/lbe/security/service/a/g;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->h:Lcom/lbe/security/service/a/g;

    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/PermissionListHIPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->b:Landroid/widget/TextView;

    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/PermissionListHIPS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->c:Landroid/widget/LinearLayout;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->d:Landroid/view/LayoutInflater;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->f:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->f:Landroid/content/SharedPreferences;

    const-string v1, "enable_hips_service"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/lbe/security/ui/PermissionListHIPS;->e:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->e:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->h:Lcom/lbe/security/service/a/g;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/g;->a()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionListHIPS;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 15

    const/4 v14, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v5, p0, Lcom/lbe/security/ui/PermissionListHIPS;->c:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    new-array v6, v0, [Lcom/lbe/security/bean/g;

    sget-object v0, Lcom/lbe/security/bean/l;->c:Lcom/lbe/security/bean/g;

    aput-object v0, v6, v3

    sget-object v0, Lcom/lbe/security/bean/l;->b:Lcom/lbe/security/bean/g;

    aput-object v0, v6, v14

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v2, v3

    :goto_0
    array-length v0, v6

    if-lt v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionListHIPS;->a()V

    return-void

    :cond_0
    aget-object v1, v6, v2

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->d:Landroid/view/LayoutInflater;

    const v4, 0x7f03000f

    invoke-virtual {v0, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f09002c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Lcom/lbe/security/bean/g;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/lbe/security/bean/g;->a()[Lcom/lbe/security/bean/k;

    move-result-object v7

    move v4, v3

    :goto_1
    array-length v0, v7

    if-lt v4, v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    aget-object v8, v7, v4

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionListHIPS;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    invoke-virtual {v0, v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f090025

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090026

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Lcom/lbe/security/bean/k;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v0, v14, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/lbe/security/ui/PermissionListHIPS;->g:Lcom/lbe/security/service/privacy/k;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    new-array v12, v14, [I

    invoke-virtual {v8}, Lcom/lbe/security/bean/k;->c()I

    move-result v13

    aput v13, v12, v3

    invoke-virtual {v10, v11, v12}, Lcom/lbe/security/service/privacy/k;->a(Ljava/lang/Boolean;[I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v3

    invoke-virtual {v8, p0, v0}, Lcom/lbe/security/bean/k;->a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/lbe/security/ui/e;

    invoke-direct {v0, p0, v8}, Lcom/lbe/security/ui/e;-><init>(Lcom/lbe/security/ui/PermissionListHIPS;Lcom/lbe/security/bean/k;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1
.end method
