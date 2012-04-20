.class public final Lcom/lbe/security/ui/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static q:Lcom/lbe/security/ui/a/d;


# instance fields
.field private a:Landroid/view/ContextThemeWrapper;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/CheckedTextView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Lcom/lbe/security/ui/a/c;

.field private m:Lcom/lbe/security/service/privacy/k;

.field private n:Ljava/util/concurrent/SynchronousQueue;

.field private o:Z

.field private p:Landroid/os/PowerManager;

.field private r:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->m:Lcom/lbe/security/service/privacy/k;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->b:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030073

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->a:Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->a:Landroid/view/ContextThemeWrapper;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->c:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->n:Ljava/util/concurrent/SynchronousQueue;

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->a:Landroid/view/ContextThemeWrapper;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->p:Landroid/os/PowerManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->d:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->d:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->e:Landroid/view/View;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->e:Landroid/view/View;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->e:Landroid/view/View;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->h:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->e:Landroid/view/View;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->i:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->e:Landroid/view/View;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->e:Landroid/view/View;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/lbe/security/ui/a/b;

    invoke-direct {v0, p0}, Lcom/lbe/security/ui/a/b;-><init>(Lcom/lbe/security/ui/a/d;)V

    iput-object v0, p0, Lcom/lbe/security/ui/a/d;->r:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/lbe/security/ui/a/d;
    .locals 1

    sget-object v0, Lcom/lbe/security/ui/a/d;->q:Lcom/lbe/security/ui/a/d;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lbe/security/ui/a/d;->a:Landroid/view/ContextThemeWrapper;

    const v2, 0x7f070078

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/ContextThemeWrapper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(IZ)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lbe/security/ui/a/d;->o:Z

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->r:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lbe/security/ui/a/d;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Lcom/lbe/security/ui/a/e;

    invoke-direct {v0}, Lcom/lbe/security/ui/a/e;-><init>()V

    iput p1, v0, Lcom/lbe/security/ui/a/e;->a:I

    iput-boolean p2, v0, Lcom/lbe/security/ui/a/e;->b:Z

    :try_start_1
    iget-object v1, p0, Lcom/lbe/security/ui/a/d;->n:Ljava/util/concurrent/SynchronousQueue;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lcom/lbe/security/ui/a/d;

    invoke-direct {v0, p0}, Lcom/lbe/security/ui/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lbe/security/ui/a/d;->q:Lcom/lbe/security/ui/a/d;

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/ui/a/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lbe/security/ui/a/d;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/ui/a/d;Lcom/lbe/security/ui/a/c;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/lbe/security/ui/a/d;->l:Lcom/lbe/security/ui/a/c;

    iget-object v0, p1, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/lbe/security/ui/a/d;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lbe/security/ui/a/d;->a:Landroid/view/ContextThemeWrapper;

    const v3, 0x7f070075

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    iget-object v0, p1, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/view/ContextThemeWrapper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->h:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->h:Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/lbe/security/ui/a/a;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/a/a;-><init>(Lcom/lbe/security/ui/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/lbe/security/ui/a/d;->a(I)V

    iput-boolean v6, p0, Lcom/lbe/security/ui/a/d;->o:Z

    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lbe/security/ui/a/d;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/lbe/security/ui/a/d;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->r:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lbe/security/ui/a/d;->r:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->g:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-direct {p0, v5, v5}, Lcom/lbe/security/ui/a/d;->a(IZ)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/lbe/security/ui/a/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/lbe/security/ui/a/d;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/lbe/security/ui/a/d;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/lbe/security/ui/a/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/lbe/security/ui/a/d;->a(IZ)V

    return-void
.end method

.method static synthetic d(Lcom/lbe/security/ui/a/d;)Landroid/widget/CheckedTextView;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->h:Landroid/widget/CheckedTextView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/lbe/security/ui/a/c;->a:I

    iget v2, p1, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v3, p1, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->c()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/lbe/security/service/core/internal/NativeCache;->a(III)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p1, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, p1, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->m:Lcom/lbe/security/service/privacy/k;

    iget-object v2, p1, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v3, p1, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;I)V

    :cond_1
    iget-object v0, p1, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v2, p1, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v3, p1, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lbe/security/bean/k;->a(I)Lcom/lbe/security/bean/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/bean/h;->c()I

    move-result v0

    move v2, v0

    :goto_1
    if-ne v2, v6, :cond_4

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->p:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->r:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->n:Ljava/util/concurrent/SynchronousQueue;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/SynchronousQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/a/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    iget-boolean v1, p1, Lcom/lbe/security/ui/a/c;->g:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget v1, p1, Lcom/lbe/security/ui/a/c;->a:I

    iget v2, p1, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v3, p1, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->c()I

    move-result v3

    iget v4, v0, Lcom/lbe/security/ui/a/e;->a:I

    invoke-static {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/NativeCache;->a(IIII)V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/lbe/security/ui/a/e;

    invoke-direct {v0}, Lcom/lbe/security/ui/a/e;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/lbe/security/ui/a/e;->a:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lbe/security/ui/a/e;->b:Z

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/lbe/security/ui/a/e;

    invoke-direct {v0}, Lcom/lbe/security/ui/a/e;-><init>()V

    iput v2, v0, Lcom/lbe/security/ui/a/e;->a:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lbe/security/ui/a/e;->b:Z

    iget-boolean v1, p1, Lcom/lbe/security/ui/a/c;->g:Z

    if-eqz v1, :cond_5

    iget v1, p1, Lcom/lbe/security/ui/a/c;->a:I

    iget v2, p1, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v3, p1, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->c()I

    move-result v3

    iget v4, v0, Lcom/lbe/security/ui/a/e;->a:I

    invoke-static {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/NativeCache;->a(IIII)V

    :cond_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_6
    move v2, v0

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/lbe/security/ui/a/d;->h:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lbe/security/ui/a/d;->a(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/ui/a/d;->k:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lbe/security/ui/a/d;->h:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lbe/security/ui/a/d;->a(IZ)V

    goto :goto_0
.end method
