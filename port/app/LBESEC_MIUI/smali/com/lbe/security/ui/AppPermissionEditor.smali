.class public Lcom/lbe/security/ui/AppPermissionEditor;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/lbe/security/service/privacy/b;
.implements Lcom/lbe/security/service/privacy/i;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/app/ActionBar;

.field private c:Landroid/widget/Switch;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Lcom/lbe/security/service/privacy/k;

.field private p:Lcom/lbe/security/service/privacy/q;

.field private q:Lcom/lbe/security/service/a/g;

.field private r:I

.field private s:Lcom/lbe/security/service/a/i;

.field private t:Z

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/ui/AppPermissionEditor;)Lcom/lbe/security/service/privacy/k;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->o:Lcom/lbe/security/service/privacy/k;

    return-object v0
.end method

.method static synthetic a(Lcom/lbe/security/ui/AppPermissionEditor;I)V
    .locals 0

    iput p1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->u:I

    return-void
.end method

.method static synthetic b(Lcom/lbe/security/ui/AppPermissionEditor;)I
    .locals 1

    iget v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->r:I

    return v0
.end method

.method private b()V
    .locals 14

    const v13, 0x7f070002

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->o:Lcom/lbe/security/service/privacy/k;

    iget v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->r:I

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/lbe/security/service/a/i;

    iget-object v2, p0, Lcom/lbe/security/ui/AppPermissionEditor;->q:Lcom/lbe/security/service/a/g;

    invoke-direct {v1, v2, v0}, Lcom/lbe/security/service/a/i;-><init>(Lcom/lbe/security/service/a/g;Lcom/lbe/security/bean/e;)V

    iput-object v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->b:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v1}, Lcom/lbe/security/service/a/i;->b()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v5}, Lcom/lbe/security/service/a/i;->a()Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v13, v2}, Lcom/lbe/security/ui/AppPermissionEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/lbe/security/service/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->c:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->c:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v1}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->c:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->d:Landroid/widget/TextView;

    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :goto_2
    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v6

    sget-object v0, Lcom/lbe/security/bean/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->t:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v1}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    move v0, v4

    :goto_3
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->n:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/lbe/security/ui/k;

    invoke-direct {v2, p0, v1}, Lcom/lbe/security/ui/k;-><init>(Lcom/lbe/security/ui/AppPermissionEditor;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->m:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lbe/security/ui/l;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/l;-><init>(Lcom/lbe/security/ui/AppPermissionEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v1}, Lcom/lbe/security/service/a/i;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v1}, Lcom/lbe/security/service/a/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->i:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v2}, Lcom/lbe/security/service/a/i;->a()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v13, v1}, Lcom/lbe/security/ui/AppPermissionEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->d:Landroid/widget/TextView;

    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_3
    move v2, v4

    goto/16 :goto_2

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/g;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/lbe/security/bean/g;->a()[Lcom/lbe/security/bean/k;

    move-result-object v5

    array-length v9, v5

    move v1, v3

    :goto_5
    if-lt v1, v9, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f03000f

    iget-object v9, p0, Lcom/lbe/security/ui/AppPermissionEditor;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v1, 0x7f09002c

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/lbe/security/bean/g;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v5, v3

    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/lbe/security/bean/k;

    invoke-virtual {v1}, Lcom/lbe/security/bean/k;->c()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->a:Landroid/view/LayoutInflater;

    const v10, 0x7f03000b

    iget-object v11, p0, Lcom/lbe/security/ui/AppPermissionEditor;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10, v11, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/lbe/security/ui/ag;

    invoke-direct {v11}, Lcom/lbe/security/ui/ag;-><init>()V

    invoke-virtual {v1}, Lcom/lbe/security/bean/k;->c()I

    move-result v0

    iput v0, v11, Lcom/lbe/security/ui/ag;->a:I

    const v0, 0x7f090027

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v11, Lcom/lbe/security/ui/ag;->b:Landroid/view/View;

    const v0, 0x7f090025

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v11, Lcom/lbe/security/ui/ag;->c:Landroid/widget/TextView;

    const v0, 0x7f090026

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v11, Lcom/lbe/security/ui/ag;->d:Landroid/widget/TextView;

    iget-object v0, v11, Lcom/lbe/security/ui/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Lcom/lbe/security/bean/k;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v11, Lcom/lbe/security/ui/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Lcom/lbe/security/bean/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v11, Lcom/lbe/security/ui/ag;->b:Landroid/view/View;

    invoke-virtual {v1, v9}, Lcom/lbe/security/bean/k;->a(I)Lcom/lbe/security/bean/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/h;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    if-nez v2, :cond_5

    iget-object v0, v11, Lcom/lbe/security/ui/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v11, Lcom/lbe/security/ui/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v11, Lcom/lbe/security/ui/ag;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_6

    :cond_6
    aget-object v10, v5, v1

    invoke-virtual {v10}, Lcom/lbe/security/bean/k;->c()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->c()V

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto/16 :goto_3
.end method

.method static synthetic c(Lcom/lbe/security/ui/AppPermissionEditor;)Lcom/lbe/security/service/a/i;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    return-object v0
.end method

.method private c()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lbe/security/ui/AppPermissionEditor;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    new-instance v1, Lcom/lbe/security/service/privacy/QueryFilter;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v4}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lbe/security/bean/e;->e()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/privacy/QueryFilter;-><init>([I[ILjava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lbe/security/ui/AppPermissionEditor;->p:Lcom/lbe/security/service/privacy/q;

    const-string v3, "timestamp"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/service/privacy/QueryFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lbe/security/ui/AppPermissionEditor;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03000f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lbe/security/ui/AppPermissionEditor;->k:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f09002c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f070095

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lbe/security/ui/AppPermissionEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lbe/security/ui/AppPermissionEditor;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/bean/EventLog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lbe/security/ui/AppPermissionEditor;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lbe/security/ui/AppPermissionEditor;->k:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    const v2, 0x7f090022

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090023

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090024

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->b()I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    if-nez v5, :cond_3

    sget-object v5, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->b()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/lbe/security/bean/k;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "["

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->b()I

    move-result v7

    invoke-virtual {v8, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v7, v5

    :goto_1
    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->e()I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    if-nez v5, :cond_2

    sget-object v5, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->e()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/lbe/security/bean/c;->a(I)Lcom/lbe/security/bean/h;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/lbe/security/bean/h;->a(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->e()I

    move-result v14

    invoke-virtual {v9, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    new-instance v14, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->c()J

    move-result-wide v15

    invoke-direct/range {v14 .. v16}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lbe/security/ui/AppPermissionEditor;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    :cond_3
    move-object v7, v5

    goto :goto_1
.end method

.method static synthetic d(Lcom/lbe/security/ui/AppPermissionEditor;)I
    .locals 1

    iget v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->u:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/lbe/security/bean/e;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/lbe/security/bean/e;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->e()I

    move-result v0

    iget-object v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v1}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->b()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/lbe/security/bean/e;)V
    .locals 2

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->e()I

    move-result v0

    iget-object v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v1}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->finish()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/lbe/security/bean/e;)V
    .locals 2

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->e()I

    move-result v0

    iget-object v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v1}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->b()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->c:Landroid/widget/Switch;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/lbe/security/ui/f;

    invoke-direct {v2, p0}, Lcom/lbe/security/ui/f;-><init>(Lcom/lbe/security/ui/AppPermissionEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/lbe/security/ui/g;

    invoke-direct {v2, p0}, Lcom/lbe/security/ui/g;-><init>(Lcom/lbe/security/ui/AppPermissionEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lbe/security/ui/h;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/h;-><init>(Lcom/lbe/security/ui/AppPermissionEditor;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->o:Lcom/lbe/security/service/privacy/k;

    iget v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->r:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lbe/security/service/privacy/k;->a(IZ)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/ag;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    iget v0, v0, Lcom/lbe/security/ui/ag;->a:I

    invoke-virtual {v2, v0}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v2

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v0

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->a()Lcom/lbe/security/bean/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/bean/i;->a()[Lcom/lbe/security/bean/h;

    move-result-object v4

    array-length v0, v4

    new-array v5, v0, [Ljava/lang/String;

    iput v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->u:I

    move v0, v1

    :goto_0
    array-length v1, v5

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lcom/lbe/security/bean/k;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->u:I

    new-instance v3, Lcom/lbe/security/ui/i;

    invoke-direct {v3, p0}, Lcom/lbe/security/ui/i;-><init>(Lcom/lbe/security/ui/AppPermissionEditor;)V

    invoke-virtual {v0, v5, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/lbe/security/ui/j;

    invoke-direct {v3, p0, v2, v4}, Lcom/lbe/security/ui/j;-><init>(Lcom/lbe/security/ui/AppPermissionEditor;Lcom/lbe/security/bean/k;[Lcom/lbe/security/bean/h;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void

    :cond_1
    aget-object v1, v4, v0

    invoke-virtual {v1, p0}, Lcom/lbe/security/bean/h;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v5, v0

    aget-object v1, v4, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/lbe/security/bean/k;->a(I)Lcom/lbe/security/bean/h;

    move-result-object v6

    if-ne v1, v6, :cond_2

    iput v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->u:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x30d0015

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/AppPermissionEditor;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/AppPermissionEditor;->setContentView(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->a:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->o:Lcom/lbe/security/service/privacy/k;

    invoke-static {}, Lcom/lbe/security/service/privacy/q;->a()Lcom/lbe/security/service/privacy/q;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->p:Lcom/lbe/security/service/privacy/q;

    new-instance v0, Lcom/lbe/security/service/a/g;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->q:Lcom/lbe/security/service/a/g;

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->b:Landroid/app/ActionBar;

    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/AppPermissionEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->c:Landroid/widget/Switch;

    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/AppPermissionEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->d:Landroid/widget/TextView;

    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/AppPermissionEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/AppPermissionEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f09000b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->i:Landroid/widget/TextView;

    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/AppPermissionEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/AppPermissionEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.lbe.security.intent.PACKAGE_INSTALLED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v6, p0, Lcom/lbe/security/ui/AppPermissionEditor;->t:Z

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->r:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->r:I

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->finish()V

    :goto_2
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/lbe/security/ui/AppPermissionEditor;->t:Z

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_package_uid"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->r:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->o:Lcom/lbe/security/service/privacy/k;

    iget v2, p0, Lcom/lbe/security/ui/AppPermissionEditor;->r:I

    invoke-virtual {v0, v2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    const/16 v2, 0x32

    if-lt v0, v2, :cond_3

    const/16 v2, 0xa

    if-lt v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->finish()V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/lbe/security/ui/AppPermissionEditor;->o:Lcom/lbe/security/service/privacy/k;

    iget v3, p0, Lcom/lbe/security/ui/AppPermissionEditor;->r:I

    invoke-virtual {v2, v3}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->t:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03000c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->l:Landroid/view/View;

    const v2, 0x7f090029

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->l:Landroid/view/View;

    const v2, 0x7f090028

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->b:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/lbe/security/ui/AppPermissionEditor;->l:Landroid/view/View;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x10

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->b:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->b:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->b:Landroid/app/ActionBar;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->b:Landroid/app/ActionBar;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->q:Lcom/lbe/security/service/a/g;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/g;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09002e

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v0, v4, :cond_0

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "package"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    :goto_2
    return v0

    :cond_0
    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    const-string v0, "pkg"

    :goto_3
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.ApplicationPkgName"

    goto :goto_3

    :cond_2
    const v2, 0x7f09002f

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->s:Lcom/lbe/security/service/a/i;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_2

    :cond_3
    const v2, 0x102002c

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->finish()V

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->o:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->b(Lcom/lbe/security/service/privacy/i;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->p:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/q;->b(Lcom/lbe/security/service/privacy/b;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->p:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/q;->b(Lcom/lbe/security/service/privacy/b;)V

    iget-object v0, p0, Lcom/lbe/security/ui/AppPermissionEditor;->o:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/i;)V

    invoke-direct {p0}, Lcom/lbe/security/ui/AppPermissionEditor;->b()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
