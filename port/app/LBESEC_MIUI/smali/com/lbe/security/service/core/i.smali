.class public final Lcom/lbe/security/service/core/i;
.super Lcom/lbe/security/service/core/internal/e;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static a:Lcom/lbe/security/service/core/i;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/lbe/security/ui/a/d;

.field private d:Lcom/lbe/security/service/privacy/k;

.field private e:Lcom/lbe/security/service/privacy/q;

.field private f:Landroid/content/SharedPreferences;

.field private g:I

.field private h:Z

.field private i:Landroid/media/AudioManager;

.field private j:Lcom/lbe/security/service/core/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lbe/security/service/core/i;->a:Lcom/lbe/security/service/core/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/lbe/security/service/core/internal/e;-><init>()V

    iput-object p1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-static {}, Lcom/lbe/security/service/privacy/q;->a()Lcom/lbe/security/service/privacy/q;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-static {}, Lcom/lbe/security/ui/a/d;->a()Lcom/lbe/security/ui/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lbe/security/service/core/i;->i:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/core/i;->f:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->f:Landroid/content/SharedPreferences;

    const-string v1, "forge_sendreport"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lbe/security/service/core/i;->h:Z

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->f:Landroid/content/SharedPreferences;

    const-string v1, "record_telephony_event"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lbe/security/service/core/i;->g:I

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static final a()Lcom/lbe/security/service/core/i;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/core/i;->a:Lcom/lbe/security/service/core/i;

    return-object v0
.end method

.method public static final declared-synchronized a(Landroid/app/Application;)V
    .locals 2

    const-class v1, Lcom/lbe/security/service/core/i;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/lbe/security/service/core/i;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lbe/security/service/core/i;->a:Lcom/lbe/security/service/core/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private varargs a([Landroid/app/PendingIntent;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    :try_start_0
    iget-boolean v1, p0, Lcom/lbe/security/service/core/i;->h:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final a(II)I
    .locals 10

    const/16 v2, 0x40

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v3, 0x7f070063

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final a(III)I
    .locals 10

    const/16 v2, 0x20

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x10

    if-ne p3, v1, :cond_4

    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    :cond_2
    :goto_1
    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v1}, Lcom/lbe/security/bean/k;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_3
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0

    :cond_4
    if-ne p3, v2, :cond_2

    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    goto :goto_1

    :sswitch_0
    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    goto :goto_2

    :sswitch_1
    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(IILjava/lang/String;)I
    .locals 10

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v0, Lcom/lbe/security/service/core/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/ContentProviderMap;

    iget-object v4, v0, Lcom/lbe/security/service/core/internal/ContentProviderMap;->a:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v2, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v2, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v2

    iput-object v2, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    iget v0, v0, Lcom/lbe/security/service/core/internal/ContentProviderMap;->b:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f07005b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    :goto_2
    const-string v0, ""

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v0, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-nez v9, :cond_4

    move v0, v1

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f070059

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f07005a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_5
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)I
    .locals 10

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v0, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lbe/security/service/core/i;->g:I

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v0, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v1, 0x7f070057

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%1$s:%2$s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v5, 0x7f070051

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%1$s:%2$s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v5, 0x7f070053

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-nez p4, :cond_3

    iget-object v4, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v5, 0x7f070054

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    :cond_3
    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%1$s:%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v5, 0x7f070052

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v0, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-nez v9, :cond_4

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    const/4 v2, 0x1

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_5
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/PendingIntent;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    invoke-direct {p0, v0}, Lcom/lbe/security/service/core/i;->a([Landroid/app/PendingIntent;)V

    :cond_6
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto/16 :goto_0
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)I
    .locals 11

    new-instance v9, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v9, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v9, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v9, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v9, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/lbe/security/service/core/i;->g:I

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v9, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v9, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-nez v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f070057

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%1$s:%2$s\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v6, 0x7f070051

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%1$s:%2$s\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v6, 0x7f070053

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    if-nez p4, :cond_3

    iget-object v5, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v6, 0x7f070054

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    :cond_3
    aput-object p4, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "%1$s:%2$s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v7, 0x7f070052

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v9}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v10

    if-nez v10, :cond_5

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/lbe/security/bean/EventLog;

    iget-object v2, v9, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v2}, Lcom/lbe/security/bean/e;->e()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v9, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v7, v9, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v8, v10, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v1 .. v8}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v2, v1}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v1, v10, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v2, v9, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    const/4 v3, 0x1

    iget v4, v10, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_6
    iget v1, v10, Lcom/lbe/security/ui/a/e;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/app/PendingIntent;

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/PendingIntent;

    invoke-direct {p0, v1}, Lcom/lbe/security/service/core/i;->a([Landroid/app/PendingIntent;)V

    :cond_7
    iget v1, v10, Lcom/lbe/security/ui/a/e;->a:I

    goto/16 :goto_0
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;)I
    .locals 10

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v0, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lbe/security/service/core/i;->g:I

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v0, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v1, 0x7f070057

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "%1$s:%2$s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v5, 0x7f070051

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%1$s:%2$s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v5, 0x7f070053

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-nez p4, :cond_3

    iget-object v4, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v5, 0x7f070054

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    :cond_3
    aput-object p4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%1$s:%2$d\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v5, 0x7f070055

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, p5

    if-lt v0, v3, :cond_4

    const-string v0, "%1$s:%2$s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v6, 0x7f070052

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v0, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-nez v9, :cond_6

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_4
    aget-byte v3, p5, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_5

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    aget-byte v3, p5, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    const/4 v2, 0x1

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_7
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/PendingIntent;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    invoke-direct {p0, v0}, Lcom/lbe/security/service/core/i;->a([Landroid/app/PendingIntent;)V

    :cond_8
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto/16 :goto_0
.end method

.method public final a(II[B)I
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    array-length v2, p3

    invoke-virtual {v1, p3, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lbe/security/service/core/i;->d(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(II[B[BLandroid/app/PendingIntent;)I
    .locals 10

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_0
    if-nez p3, :cond_1

    array-length v0, p4

    add-int/lit8 v0, v0, 0x1

    :goto_2
    new-array v2, v0, [B

    const/4 v0, 0x0

    if-nez p3, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v1, v2, v0

    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x0

    :goto_4
    array-length v3, p4

    if-lt v1, v3, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_1
    array-length v0, p3

    array-length v1, p4

    add-int/2addr v0, v1

    goto :goto_2

    :cond_2
    aget-byte v1, p3, v0

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    array-length v1, p3

    if-lt v0, v1, :cond_2

    goto :goto_3

    :cond_4
    aget-byte v3, p4, v1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    new-instance v1, La/a/a/a/d;

    invoke-direct {v1}, La/a/a/a/d;-><init>()V

    invoke-static {v0}, La/a/a/a/a;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, La/a/a/a/d;->a(Ljava/lang/String;)La/a/a/a/g;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/g;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, La/a/a/a/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, La/a/a/a/g;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v3, 0x0

    invoke-direct {v8, v3}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v3, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v3, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v3

    iput-object v3, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v3, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v3, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/lbe/security/service/core/i;->g:I

    if-eqz v3, :cond_7

    iget-object v3, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v3}, Lcom/lbe/security/bean/e;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x2

    goto :goto_1

    :cond_7
    sget-object v3, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v3

    iput-object v3, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v3, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-nez v3, :cond_8

    const/4 v0, 0x2

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v4, 0x7f070057

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%1$s:%2$s\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v9, 0x7f070051

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%1$s:%2$s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v7, 0x7f070053

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v6, 0x7f070054

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%1$s:%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v6, 0x7f070052

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v0, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-nez v9, :cond_a

    const/4 v0, 0x2

    goto/16 :goto_1

    :cond_a
    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    const/4 v2, 0x1

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_b
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/PendingIntent;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-direct {p0, v0}, Lcom/lbe/security/service/core/i;->a([Landroid/app/PendingIntent;)V

    :cond_c
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto/16 :goto_1
.end method

.method public final a([Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->j:Lcom/lbe/security/service/core/v;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/service/core/i;->j:Lcom/lbe/security/service/core/v;

    invoke-interface {v0}, Lcom/lbe/security/service/core/v;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public final b(II)I
    .locals 10

    const/16 v2, 0x40

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v3, 0x7f070064

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final b(III)I
    .locals 10

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f070073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final b(IILjava/lang/String;)I
    .locals 10

    const/16 v2, 0x20

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v3, 0x7f070062

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v3, 0x7f07005d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v3, 0x7f07005c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    goto :goto_1
.end method

.method public final c(II)I
    .locals 10

    const/16 v2, 0x40

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v3, 0x7f070067

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final c(III)I
    .locals 10

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->i:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    if-eq p3, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final c(IILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/lbe/security/service/core/i;->b(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final d(II)I
    .locals 10

    const/16 v2, 0x40

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v3, 0x7f070065

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final d(IILjava/lang/String;)I
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    invoke-direct {v8, v3}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v0, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v0, p0, Lcom/lbe/security/service/core/i;->g:I

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v0, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v0, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v1, 0x7f070058

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v0, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_3
    iget v2, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final e(II)I
    .locals 10

    const/16 v2, 0x40

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v3, 0x7f070066

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final e(IILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/lbe/security/service/core/i;->d(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final f(II)I
    .locals 10

    const/16 v2, 0x20

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v3, 0x7f070061

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v3, 0x7f07005e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final g(II)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/lbe/security/service/core/i;->f(II)I

    move-result v0

    return v0
.end method

.method public final h(II)I
    .locals 10

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f07006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final i(II)I
    .locals 10

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v0}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final j(II)I
    .locals 10

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v0}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f07006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final k(II)I
    .locals 10

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v0}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final l(II)I
    .locals 10

    const/4 v0, 0x2

    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v1, v0}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f070071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final m(II)I
    .locals 10

    const/4 v0, 0x2

    invoke-static {}, Lcom/lbe/security/service/core/g;->e()Lcom/lbe/security/service/core/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lbe/security/service/core/g;->f()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v8, Lcom/lbe/security/ui/a/c;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/lbe/security/ui/a/c;-><init>(Z)V

    iput p2, v8, Lcom/lbe/security/ui/a/c;->a:I

    iput p1, v8, Lcom/lbe/security/ui/a/c;->b:I

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, p2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->b:Landroid/content/Context;

    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->c:Lcom/lbe/security/ui/a/d;

    invoke-virtual {v1, v8}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/c;)Lcom/lbe/security/ui/a/e;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v8, Lcom/lbe/security/ui/a/c;->e:Ljava/lang/String;

    iget-object v6, v8, Lcom/lbe/security/ui/a/c;->f:Ljava/lang/String;

    iget v7, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lbe/security/service/core/i;->e:Lcom/lbe/security/service/privacy/q;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    iget-boolean v0, v9, Lcom/lbe/security/ui/a/e;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->d:Lcom/lbe/security/service/privacy/k;

    iget-object v1, v8, Lcom/lbe/security/ui/a/c;->c:Lcom/lbe/security/bean/e;

    iget-object v2, v8, Lcom/lbe/security/ui/a/c;->d:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget v3, v9, Lcom/lbe/security/ui/a/e;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_2
    iget v0, v9, Lcom/lbe/security/ui/a/e;->a:I

    goto :goto_0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "forge_sendreport"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->f:Landroid/content/SharedPreferences;

    const-string v1, "forge_sendreport"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lbe/security/service/core/i;->h:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "record_telephony_event"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/i;->f:Landroid/content/SharedPreferences;

    const-string v1, "record_telephony_event"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lbe/security/service/core/i;->g:I

    goto :goto_0
.end method
