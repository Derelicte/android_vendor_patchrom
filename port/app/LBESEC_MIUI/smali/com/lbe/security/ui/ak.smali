.class public final Lcom/lbe/security/ui/ak;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/lbe/security/service/privacy/b;
.implements Lcom/lbe/security/service/privacy/i;


# instance fields
.field private a:Lcom/lbe/security/service/privacy/k;

.field private b:Lcom/lbe/security/service/privacy/q;

.field private c:Lcom/lbe/security/service/a/g;

.field private d:Lcom/lbe/security/ui/v;

.field private e:Lcom/lbe/security/ui/support/PinnedHeaderListView;

.field private f:Landroid/os/Handler;

.field private g:Ljava/util/List;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/lbe/security/ui/aj;

    invoke-direct {v0, p0}, Lcom/lbe/security/ui/aj;-><init>(Lcom/lbe/security/ui/ak;)V

    iput-object v0, p0, Lcom/lbe/security/ui/ak;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/ui/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/lbe/security/ui/ak;->b()V

    return-void
.end method

.method static synthetic b(Lcom/lbe/security/ui/ak;)Lcom/lbe/security/service/privacy/q;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->b:Lcom/lbe/security/service/privacy/q;

    return-object v0
.end method

.method private b()V
    .locals 15

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->b:Lcom/lbe/security/service/privacy/q;

    new-instance v1, Lcom/lbe/security/service/privacy/QueryFilter;

    invoke-direct {v1}, Lcom/lbe/security/service/privacy/QueryFilter;-><init>()V

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2, v6}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/service/privacy/QueryFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    new-instance v3, Ljava/sql/Date;

    const-wide/16 v0, 0x0

    invoke-direct {v3, v0, v1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p0}, Lcom/lbe/security/ui/ak;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lbe/security/ui/ak;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    move v5, v6

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lt v5, v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->d:Lcom/lbe/security/ui/v;

    invoke-virtual {v0}, Lcom/lbe/security/ui/v;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/lbe/security/bean/EventLog;

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->a:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v11

    if-eqz v11, :cond_4

    new-instance v4, Ljava/sql/Date;

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->c()J

    move-result-wide v12

    invoke-direct {v4, v12, v13}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/sql/Date;->getYear()I

    move-result v0

    invoke-virtual {v3}, Ljava/sql/Date;->getYear()I

    move-result v12

    if-ne v0, v12, :cond_1

    invoke-virtual {v4}, Ljava/sql/Date;->getMonth()I

    move-result v0

    invoke-virtual {v3}, Ljava/sql/Date;->getMonth()I

    move-result v12

    if-ne v0, v12, :cond_1

    invoke-virtual {v4}, Ljava/sql/Date;->getDate()I

    move-result v0

    invoke-virtual {v3}, Ljava/sql/Date;->getDate()I

    move-result v12

    if-eq v0, v12, :cond_2

    :cond_1
    new-instance v0, Lcom/lbe/security/ui/ah;

    iget-object v2, p0, Lcom/lbe/security/ui/ak;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v6, v2}, Lcom/lbe/security/ui/ah;-><init>(II)V

    invoke-virtual {v8, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lbe/security/ui/ah;->c:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/lbe/security/ui/ak;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    move-object v3, v4

    :cond_2
    new-instance v4, Ljava/sql/Time;

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->c()J

    move-result-wide v12

    invoke-direct {v4, v12, v13}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->e()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    sget-object v0, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->e()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/lbe/security/bean/c;->a(I)Lcom/lbe/security/bean/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lbe/security/ui/ak;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/lbe/security/bean/h;->a(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->e()I

    move-result v12

    invoke-virtual {v10, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    iget-object v12, p0, Lcom/lbe/security/ui/ak;->c:Lcom/lbe/security/service/a/g;

    invoke-virtual {v11}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/lbe/security/service/a/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/lbe/security/ui/ah;

    const/4 v13, 0x1

    iget v14, v2, Lcom/lbe/security/ui/ah;->b:I

    invoke-direct {v12, v13, v14}, Lcom/lbe/security/ui/ah;-><init>(II)V

    iput-object v11, v12, Lcom/lbe/security/ui/ah;->c:Ljava/lang/CharSequence;

    invoke-virtual {v9, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/lbe/security/ui/ah;->d:Ljava/lang/CharSequence;

    iput-object v0, v12, Lcom/lbe/security/ui/ah;->e:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/lbe/security/bean/EventLog;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/lbe/security/ui/ah;->f:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->g:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lbe/security/ui/ak;->f:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lbe/security/ui/ak;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lbe/security/ui/ak;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/lbe/security/ui/ak;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/lbe/security/bean/e;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/lbe/security/bean/e;I)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/lbe/security/bean/e;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lbe/security/ui/ak;->f:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lbe/security/ui/ak;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lbe/security/ui/ak;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/lbe/security/ui/ak;->b()V

    goto :goto_0
.end method

.method public final c(Lcom/lbe/security/bean/e;)V
    .locals 0

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/ak;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/ak;->setHasOptionsMenu(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/ui/ak;->f:Landroid/os/Handler;

    const v0, 0x7f030004

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/support/PinnedHeaderListView;

    iput-object v0, p0, Lcom/lbe/security/ui/ak;->e:Lcom/lbe/security/ui/support/PinnedHeaderListView;

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/ak;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {}, Lcom/lbe/security/service/privacy/q;->a()Lcom/lbe/security/service/privacy/q;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/ak;->b:Lcom/lbe/security/service/privacy/q;

    new-instance v0, Lcom/lbe/security/service/a/g;

    invoke-virtual {p0}, Lcom/lbe/security/ui/ak;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lbe/security/service/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lbe/security/ui/ak;->c:Lcom/lbe/security/service/a/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/ui/ak;->g:Ljava/util/List;

    new-instance v0, Lcom/lbe/security/ui/v;

    invoke-virtual {p0}, Lcom/lbe/security/ui/ak;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lbe/security/ui/ak;->g:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/lbe/security/ui/v;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lbe/security/ui/ak;->d:Lcom/lbe/security/ui/v;

    const v0, 0x7f03000d

    iget-object v2, p0, Lcom/lbe/security/ui/ak;->e:Lcom/lbe/security/ui/support/PinnedHeaderListView;

    invoke-virtual {p1, v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lbe/security/ui/ak;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/lbe/security/ui/ak;->e:Lcom/lbe/security/ui/support/PinnedHeaderListView;

    iget-object v3, p0, Lcom/lbe/security/ui/ak;->d:Lcom/lbe/security/ui/v;

    invoke-virtual {v2, v3}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/lbe/security/ui/ak;->e:Lcom/lbe/security/ui/support/PinnedHeaderListView;

    invoke-virtual {v2, v0}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->e:Lcom/lbe/security/ui/support/PinnedHeaderListView;

    iget-object v2, p0, Lcom/lbe/security/ui/ak;->d:Lcom/lbe/security/ui/v;

    invoke-virtual {v0, v2}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->c:Lcom/lbe/security/service/a/g;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/g;->a()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lbe/security/ui/ak;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07008b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/lbe/security/ui/ai;

    invoke-direct {v2, p0}, Lcom/lbe/security/ui/ai;-><init>(Lcom/lbe/security/ui/ak;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->b:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/q;->b(Lcom/lbe/security/service/privacy/b;)V

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->a:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->b(Lcom/lbe/security/service/privacy/i;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->a:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/i;)V

    iget-object v0, p0, Lcom/lbe/security/ui/ak;->b:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/service/privacy/b;)V

    invoke-direct {p0}, Lcom/lbe/security/ui/ak;->b()V

    return-void
.end method
