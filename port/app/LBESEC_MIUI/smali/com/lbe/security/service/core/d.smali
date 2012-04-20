.class public final Lcom/lbe/security/service/core/d;
.super Lcom/lbe/security/service/core/internal/h;

# interfaces
.implements Lcom/lbe/security/service/privacy/i;


# static fields
.field private static d:Lcom/lbe/security/service/core/d;

.field private static m:Ljava/util/List;

.field private static n:Ljava/util/List;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private h:Ljava/util/concurrent/ConcurrentHashMap;

.field private i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private j:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private k:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private l:Lcom/lbe/security/service/privacy/k;

.field private o:Lcom/lbe/security/service/core/internal/w;

.field private p:Ljava/lang/Runnable;

.field private q:Ljava/lang/Runnable;

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;

.field private t:Ljava/lang/Runnable;

.field private u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/16 v6, 0x8

    sput-object v4, Lcom/lbe/security/service/core/d;->d:Lcom/lbe/security/service/core/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lbe/security/service/core/d;->m:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "activity"

    const-string v3, "stub_activity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/d;->m:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "location"

    const-string v3, "stub_location"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/d;->m:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "telephony.registry"

    const-string v3, "stub_telephony.registry"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/d;->m:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "iphonesubinfo"

    const-string v3, "stub_iphonesubinfo"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/d;->m:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "phone"

    const-string v3, "stub_phone"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/d;->m:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "isms"

    const-string v3, "stub_isms"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/d;->m:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "audio"

    const-string v3, "stub_audio"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/lbe/security/service/core/d;->n:Ljava/util/List;

    new-instance v0, Lcom/lbe/security/service/core/a;

    const-string v1, "SERVICEMANAGER"

    const-string v2, "libservice.so"

    const-string v3, "/system/bin/servicemanager"

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/service/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/lbe/security/service/core/d;->n:Ljava/util/List;

    new-instance v0, Lcom/lbe/security/service/core/a;

    const-string v1, "SYSTEMSERVER"

    const-string v2, "libservice.so"

    const-string v3, "system_server"

    const-string v4, "activity"

    const/4 v5, 0x2

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/service/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/lbe/security/service/core/d;->n:Ljava/util/List;

    new-instance v0, Lcom/lbe/security/service/core/a;

    const-string v1, "PHONE"

    const-string v2, "libservice.so"

    const-string v3, "com.android.phone"

    const-string v4, "phone"

    const/4 v5, 0x3

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/service/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/lbe/security/service/core/internal/h;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/lbe/security/service/core/q;

    invoke-direct {v0, p0, p0}, Lcom/lbe/security/service/core/q;-><init>(Lcom/lbe/security/service/core/d;Lcom/lbe/security/service/core/internal/h;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->o:Lcom/lbe/security/service/core/internal/w;

    new-instance v0, Lcom/lbe/security/service/core/o;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/o;-><init>(Lcom/lbe/security/service/core/d;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/core/p;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/p;-><init>(Lcom/lbe/security/service/core/d;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->q:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/core/m;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/m;-><init>(Lcom/lbe/security/service/core/d;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->r:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/core/n;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/n;-><init>(Lcom/lbe/security/service/core/d;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->s:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/core/k;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/k;-><init>(Lcom/lbe/security/service/core/d;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->t:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/core/l;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/l;-><init>(Lcom/lbe/security/service/core/d;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->u:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/lbe/security/service/a/h;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->e:Ljava/lang/String;

    sget-object v0, Lcom/lbe/security/service/core/d;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/lbe/security/service/core/b;->a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V

    invoke-static {p1, p2}, Lcom/lbe/security/service/core/x;->a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V

    invoke-static {p1, p2}, Lcom/lbe/security/service/core/e;->a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V

    invoke-static {p1, p2}, Lcom/lbe/security/service/core/f;->a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V

    invoke-static {p1, p2}, Lcom/lbe/security/service/core/g;->a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V

    invoke-static {p1, p2}, Lcom/lbe/security/service/core/c;->a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V

    invoke-static {p1, p2}, Lcom/lbe/security/service/core/h;->a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V

    invoke-static {}, Lcom/lbe/security/service/core/b;->e()Lcom/lbe/security/service/core/b;

    move-result-object v0

    sget-object v1, Lcom/lbe/security/service/core/internal/i;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/b;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/lbe/security/service/core/b;->e()Lcom/lbe/security/service/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/core/b;->f()V

    invoke-static {}, Lcom/lbe/security/service/core/x;->e()Lcom/lbe/security/service/core/x;

    move-result-object v0

    sget-object v1, Lcom/lbe/security/service/core/internal/s;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/x;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/lbe/security/service/core/e;->e()Lcom/lbe/security/service/core/e;

    move-result-object v0

    sget-object v1, Lcom/lbe/security/service/core/internal/ag;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/e;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/lbe/security/service/core/f;->e()Lcom/lbe/security/service/core/f;

    move-result-object v0

    sget-object v1, Lcom/lbe/security/service/core/internal/aj;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/f;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/lbe/security/service/core/g;->e()Lcom/lbe/security/service/core/g;

    move-result-object v0

    sget-object v1, Lcom/lbe/security/service/core/internal/ad;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/g;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/lbe/security/service/core/c;->e()Lcom/lbe/security/service/core/c;

    move-result-object v0

    sget-object v1, Lcom/lbe/security/service/core/internal/ao;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/c;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/lbe/security/service/core/h;->e()Lcom/lbe/security/service/core/h;

    move-result-object v0

    sget-object v1, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/h;->a(Ljava/util/List;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/lbe/security/service/core/b;->e()Lcom/lbe/security/service/core/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/lbe/security/service/core/x;->e()Lcom/lbe/security/service/core/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/lbe/security/service/core/e;->e()Lcom/lbe/security/service/core/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/lbe/security/service/core/f;->e()Lcom/lbe/security/service/core/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/lbe/security/service/core/g;->e()Lcom/lbe/security/service/core/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/lbe/security/service/core/c;->e()Lcom/lbe/security/service/core/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/lbe/security/service/core/h;->e()Lcom/lbe/security/service/core/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/core/d;->l:Lcom/lbe/security/service/privacy/k;

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->l:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/i;)V

    iput-object p3, p0, Lcom/lbe/security/service/core/d;->f:Ljava/lang/String;

    sget-object v0, Lcom/lbe/security/service/core/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/lbe/security/service/core/d;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/a;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lbe/security/service/core/d;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/lbe/security/service/core/a;->b(Lcom/lbe/security/service/core/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lbe/security/service/core/a;->a(Lcom/lbe/security/service/core/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/lbe/security/service/core/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/a;

    invoke-static {v0}, Lcom/lbe/security/service/core/a;->a(Lcom/lbe/security/service/core/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/lbe/security/service/core/a;->b(Lcom/lbe/security/service/core/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/lbe/security/service/core/a;->c(Lcom/lbe/security/service/core/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/lbe/security/service/core/a;->d(Lcom/lbe/security/service/core/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/lbe/security/service/core/a;->e(Lcom/lbe/security/service/core/a;)I

    move-result v5

    invoke-static {v0}, Lcom/lbe/security/service/core/a;->f(Lcom/lbe/security/service/core/a;)I

    move-result v6

    invoke-static {v0}, Lcom/lbe/security/service/core/a;->g(Lcom/lbe/security/service/core/a;)Z

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/service/core/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    goto :goto_2
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lbe/security/service/core/d;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lbe/security/service/core/d;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lbe/security/service/core/d;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lbe/security/service/core/d;->a(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/lbe/security/service/core/d;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/lbe/security/service/core/d;->a:Landroid/os/IInterface;

    check-cast v0, Lcom/lbe/security/service/core/internal/o;

    invoke-interface {v0, p1, p2}, Lcom/lbe/security/service/core/internal/o;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/lbe/security/service/core/d;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/lbe/security/service/core/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/service/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->p:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/d;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/core/d;->a:Landroid/os/IInterface;

    check-cast v0, Lcom/lbe/security/service/core/internal/o;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/lbe/security/service/core/internal/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/lbe/security/service/core/d;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->a:Landroid/os/IInterface;

    return-object v0
.end method

.method public static final declared-synchronized a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/lbe/security/service/core/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/lbe/security/service/core/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/lbe/security/service/core/d;-><init>(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;Ljava/lang/String;)V

    sput-object v0, Lcom/lbe/security/service/core/d;->d:Lcom/lbe/security/service/core/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/lbe/security/service/core/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/lbe/security/service/core/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic d(Lcom/lbe/security/service/core/d;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final e()Lcom/lbe/security/service/core/d;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/core/d;->d:Lcom/lbe/security/service/core/d;

    return-object v0
.end method

.method static synthetic e(Lcom/lbe/security/service/core/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/lbe/security/service/core/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/lbe/security/service/core/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->l:Lcom/lbe/security/service/privacy/k;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lbe/security/service/privacy/k;->a(Ljava/lang/Boolean;[I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/lbe/security/service/core/d;->b(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1

    invoke-static {}, Lcom/lbe/security/service/core/internal/ar;->a()Lcom/lbe/security/service/core/internal/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/core/internal/ar;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/lbe/security/service/core/internal/am;->a(Landroid/os/IBinder;)Lcom/lbe/security/service/core/internal/o;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "secloader"

    return-object v0
.end method

.method public final a(Lcom/lbe/security/bean/e;)V
    .locals 1

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lbe/security/service/core/d;->b:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lbe/security/service/core/d;->i()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/lbe/security/bean/e;I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/d;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/d;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final b()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->o:Lcom/lbe/security/service/core/internal/w;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/w;->run()V

    invoke-direct {p0}, Lcom/lbe/security/service/core/d;->i()V

    return-void
.end method

.method public final b(Lcom/lbe/security/bean/e;)V
    .locals 1

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lbe/security/service/core/d;->b:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lbe/security/service/core/d;->i()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized b(Ljava/util/List;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/d;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/d;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/d;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->s:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/p;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/p;->i()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Lcom/lbe/security/service/core/internal/p;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/p;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lcom/lbe/security/bean/e;)V
    .locals 1

    iget-boolean v0, p0, Lcom/lbe/security/service/core/d;->b:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lbe/security/service/core/d;->i()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/d;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/d;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/d;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/d;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/d;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/d;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/d;->u:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lbe/security/service/core/internal/ar;->a()Lcom/lbe/security/service/core/internal/ar;

    move-result-object v0

    const-string v3, "secloader"

    invoke-virtual {v0, v3}, Lcom/lbe/security/service/core/internal/ar;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lbe/security/service/core/internal/am;->a(Landroid/os/IBinder;)Lcom/lbe/security/service/core/internal/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/core/d;->f:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/lbe/security/service/core/internal/o;->a(Ljava/lang/String;)I

    sget-object v0, Lcom/lbe/security/service/core/d;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/a;

    invoke-static {v0}, Lcom/lbe/security/service/core/a;->a(Lcom/lbe/security/service/core/a;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/lbe/security/service/core/internal/o;->d(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    invoke-static {v0}, Lcom/lbe/security/service/core/a;->f(Lcom/lbe/security/service/core/a;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eq v5, v0, :cond_1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
