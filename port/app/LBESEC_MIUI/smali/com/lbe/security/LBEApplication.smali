.class public Lcom/lbe/security/LBEApplication;
.super Landroid/app/Application;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static final c:I


# instance fields
.field private d:Landroid/os/IBinder;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/lbe/security/LBEApplication;->a:Ljava/lang/String;

    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/lbe/security/LBEApplication;->b:Ljava/lang/String;

    const-string v0, "android.app.IActivityManager"

    const-string v1, "SET_PROCESS_FOREGROUND_TRANSACTION"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/LBEApplication;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/lbe/security/b;

    invoke-direct {v0, p0}, Lcom/lbe/security/b;-><init>(Lcom/lbe/security/LBEApplication;)V

    iput-object v0, p0, Lcom/lbe/security/LBEApplication;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/lbe/security/LBEApplication;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lbe/security/LBEApplication;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/lbe/security/LBEApplication;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lbe/security/LBEApplication;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/lbe/security/LBEApplication;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lbe/security/LBEApplication;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreate()V
    .locals 5

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/lbe/security/service/a/h;->a(Landroid/app/Application;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/LBEApplication;->e:Landroid/os/Handler;

    :try_start_0
    invoke-virtual {p0}, Lcom/lbe/security/LBEApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lbe/security/LBEApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/lbe/security/LBEApplication;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/lbe/security/LBEApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lbe/security/LBEApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lbe/security/LBEApplication;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "send_error_report"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_error_report"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_error_report"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "app_ver"

    sget-object v3, Lcom/lbe/security/LBEApplication;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "stacktrace"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lbe/security/service/a/e;

    const-string v3, "http://www.lbesec.com/report/error_report.php"

    invoke-direct {v2, p0, v3, v0}, Lcom/lbe/security/service/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    new-instance v0, Lcom/lbe/security/service/a/b;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lbe/security/service/a/b;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_3
    invoke-static {p0}, Lcom/lbe/security/service/privacy/m;->a(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/lbe/security/service/privacy/e;->a(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/lbe/security/service/privacy/k;->a(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/lbe/security/service/privacy/PackageMonitor;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lbe/security/service/privacy/q;->a(Landroid/app/Application;Lcom/lbe/security/service/privacy/k;)V

    invoke-static {p0}, Lcom/lbe/security/ui/a/d;->a(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/lbe/security/service/core/i;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/lbe/security/service/core/i;->a()Lcom/lbe/security/service/core/i;

    move-result-object v0

    const-string v1, "198615E413BB1E37E50EB8B5AC97F9C7D3C46F547E08FAF16FD39C372A4741F29DFCB219957BB34353AA099C718FAD96B542FBA42FB104C5F281531AB8649B789D0AA0C3EB2A8B0F3C2191527787FF55FD15B4B04D1AC98C606E3CD5BBC6465ED2CB4AFB2120B88C00B6E1661D3B9281793D727B5037C10B2837CD5DE49727EE"

    invoke-static {p0, v0, v1}, Lcom/lbe/security/service/core/d;->a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;Ljava/lang/String;)V

    invoke-static {}, Lcom/lbe/security/service/core/d;->e()Lcom/lbe/security/service/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/core/d;->f()V

    invoke-static {p0}, Lcom/lbe/security/service/privacy/j;->a(Landroid/app/Application;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lbe/security/service/SecurityService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lbe/security/LBEApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget v0, Lcom/lbe/security/LBEApplication;->c:I

    if-ltz v0, :cond_4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_1
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/LBEApplication;->d:Landroid/os/IBinder;

    invoke-static {}, Lcom/lbe/security/service/core/internal/ar;->a()Lcom/lbe/security/service/core/internal/ar;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Lcom/lbe/security/service/core/internal/ar;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lbe/security/LBEApplication;->d:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    sget v3, Lcom/lbe/security/LBEApplication;->c:I

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
