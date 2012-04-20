.class public Lcom/lbe/security/ui/PermissionList;
.super Landroid/app/ListActivity;

# interfaces
.implements Lcom/lbe/security/service/privacy/b;
.implements Lcom/lbe/security/service/privacy/i;


# instance fields
.field protected a:Landroid/app/ActionBar;

.field protected b:Ljava/util/List;

.field protected c:Landroid/widget/TextView;

.field private d:Lcom/lbe/security/service/privacy/q;

.field private e:Lcom/lbe/security/bean/k;

.field private f:Lcom/lbe/security/service/privacy/k;

.field private g:Lcom/lbe/security/ui/af;

.field private h:Lcom/lbe/security/service/a/g;

.field private i:[Ljava/lang/CharSequence;

.field private j:[Ljava/lang/CharSequence;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/ui/PermissionList;)Lcom/lbe/security/bean/k;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    return-object v0
.end method

.method static synthetic a(Lcom/lbe/security/ui/PermissionList;I)V
    .locals 0

    iput p1, p0, Lcom/lbe/security/ui/PermissionList;->k:I

    return-void
.end method

.method static synthetic b(Lcom/lbe/security/ui/PermissionList;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->i:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Lcom/lbe/security/ui/PermissionList;)I
    .locals 1

    iget v0, p0, Lcom/lbe/security/ui/PermissionList;->k:I

    return v0
.end method

.method static synthetic d(Lcom/lbe/security/ui/PermissionList;)Lcom/lbe/security/service/privacy/k;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->f:Lcom/lbe/security/service/privacy/k;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionList;->b()V

    return-void
.end method

.method public final a(Lcom/lbe/security/bean/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionList;->b()V

    return-void
.end method

.method public final a(Lcom/lbe/security/bean/e;I)V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    invoke-virtual {v0}, Lcom/lbe/security/bean/k;->c()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->g:Lcom/lbe/security/ui/af;

    invoke-virtual {v0}, Lcom/lbe/security/ui/af;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/lbe/security/service/privacy/QueryFilter;

    new-array v0, v7, [I

    const/4 v1, -0x1

    aput v1, v0, v2

    new-array v1, v7, [I

    iget-object v4, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    invoke-virtual {v4}, Lcom/lbe/security/bean/k;->c()I

    move-result v4

    aput v4, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lcom/lbe/security/service/privacy/QueryFilter;-><init>([I[ILjava/lang/Integer;)V

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->f:Lcom/lbe/security/service/privacy/k;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v4, v7, [I

    iget-object v5, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    invoke-virtual {v5}, Lcom/lbe/security/bean/k;->c()I

    move-result v5

    aput v5, v4, v2

    invoke-virtual {v0, v1, v4}, Lcom/lbe/security/service/privacy/k;->a(Ljava/lang/Boolean;[I)Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->b:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/a/f;

    invoke-direct {v1}, Lcom/lbe/security/service/a/f;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->g:Lcom/lbe/security/ui/af;

    invoke-virtual {v0}, Lcom/lbe/security/ui/af;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->a:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    invoke-virtual {v1, p0}, Lcom/lbe/security/bean/k;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "(%d)"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lbe/security/ui/PermissionList;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/lbe/security/service/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v5, Lcom/lbe/security/ui/a;

    iget-object v6, p0, Lcom/lbe/security/ui/PermissionList;->h:Lcom/lbe/security/service/a/g;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;

    invoke-direct {v5, v6, v0}, Lcom/lbe/security/ui/a;-><init>(Lcom/lbe/security/service/a/g;Lcom/lbe/security/bean/e;)V

    iget-object v0, v3, Lcom/lbe/security/service/privacy/QueryFilter;->a:[I

    invoke-virtual {v5}, Lcom/lbe/security/ui/a;->d()Lcom/lbe/security/bean/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lbe/security/bean/e;->e()I

    move-result v6

    aput v6, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->d:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v0, v3}, Lcom/lbe/security/service/privacy/q;->b(Lcom/lbe/security/service/privacy/QueryFilter;)I

    move-result v0

    iput v0, v5, Lcom/lbe/security/ui/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->d:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v0, v3}, Lcom/lbe/security/service/privacy/q;->b(Lcom/lbe/security/service/privacy/QueryFilter;)I

    move-result v0

    iput v0, v5, Lcom/lbe/security/ui/a;->b:I

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Lcom/lbe/security/bean/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionList;->b()V

    return-void
.end method

.method public final c(Lcom/lbe/security/bean/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionList;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x30d0015

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/PermissionList;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/PermissionList;->setContentView(I)V

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionList;->a:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->a:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionList;->f:Lcom/lbe/security/service/privacy/k;

    invoke-static {}, Lcom/lbe/security/service/privacy/q;->a()Lcom/lbe/security/service/privacy/q;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionList;->d:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_permission"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v0}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionList;->finish()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    invoke-virtual {v0}, Lcom/lbe/security/bean/k;->a()Lcom/lbe/security/bean/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/i;->a()[Lcom/lbe/security/bean/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionList;->i:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->i:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionList;->j:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Lcom/lbe/security/bean/i;->a()[Lcom/lbe/security/bean/h;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_1

    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/PermissionList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionList;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    invoke-virtual {v1, p0}, Lcom/lbe/security/bean/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/lbe/security/service/a/g;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionList;->h:Lcom/lbe/security/service/a/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionList;->b:Ljava/util/List;

    new-instance v0, Lcom/lbe/security/ui/af;

    iget-object v1, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    iget-object v2, p0, Lcom/lbe/security/ui/PermissionList;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/lbe/security/ui/af;-><init>(Landroid/content/Context;Lcom/lbe/security/bean/k;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lbe/security/ui/PermissionList;->g:Lcom/lbe/security/ui/af;

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->g:Lcom/lbe/security/ui/af;

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/PermissionList;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/lbe/security/ui/y;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/y;-><init>(Lcom/lbe/security/ui/PermissionList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/lbe/security/ui/PermissionList;->i:[Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/lbe/security/bean/i;->a()[Lcom/lbe/security/bean/h;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3, p0}, Lcom/lbe/security/bean/h;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1}, Lcom/lbe/security/bean/i;->a()[Lcom/lbe/security/bean/h;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lbe/security/bean/h;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/lbe/security/ui/PermissionList;->j:[Ljava/lang/CharSequence;

    const v3, 0x7f070068

    invoke-virtual {p0, v3}, Lcom/lbe/security/ui/PermissionList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Lcom/lbe/security/ui/PermissionList;->j:[Ljava/lang/CharSequence;

    const v3, 0x7f070069

    invoke-virtual {p0, v3}, Lcom/lbe/security/ui/PermissionList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_3

    :pswitch_2
    iget-object v2, p0, Lcom/lbe/security/ui/PermissionList;->j:[Ljava/lang/CharSequence;

    const v3, 0x7f07006a

    invoke-virtual {p0, v3}, Lcom/lbe/security/ui/PermissionList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/lbe/security/ui/PermissionList;->j:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v2, p0, Lcom/lbe/security/ui/PermissionList;->j:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->h:Lcom/lbe/security/service/a/g;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/g;->a()V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x102002c

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionList;->finish()V

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/lbe/security/ui/PermissionList;->j:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->a()Lcom/lbe/security/bean/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lbe/security/bean/i;->a()[Lcom/lbe/security/bean/h;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/h;->c()I

    move-result v3

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/lbe/security/ui/PermissionList;->f:Lcom/lbe/security/service/privacy/k;

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/a;

    invoke-virtual {v0}, Lcom/lbe/security/ui/a;->d()Lcom/lbe/security/bean/e;

    move-result-object v0

    iget-object v5, p0, Lcom/lbe/security/ui/PermissionList;->e:Lcom/lbe/security/bean/k;

    invoke-virtual {v5}, Lcom/lbe/security/bean/k;->c()I

    move-result v5

    invoke-virtual {v4, v0, v5, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->d:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/q;->b(Lcom/lbe/security/service/privacy/b;)V

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->f:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->b(Lcom/lbe/security/service/privacy/i;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->f:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/i;)V

    iget-object v0, p0, Lcom/lbe/security/ui/PermissionList;->d:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/service/privacy/b;)V

    invoke-virtual {p0}, Lcom/lbe/security/ui/PermissionList;->b()V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
