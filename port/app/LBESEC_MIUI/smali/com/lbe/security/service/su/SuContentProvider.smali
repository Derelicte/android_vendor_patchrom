.class public Lcom/lbe/security/service/su/SuContentProvider;
.super Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void
.end method

.method private a(I)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    aget-object v5, v3, v1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 11

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.lbe.security.miui.su"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    const-string v1, "45AEC70597C703F37EDB9871C2C91036D8CA74DB1FFD94C10BF0AFCDD483FD28EC7A23B3BF3A5C23DC6081CDDF93C2A38A4B52FC7603D0E20AB2008D9F48EC07122D131E21E10A34FA7AE7D211704602146C785B30703ED7A76019F8387DB9747369272BE46C120ACAF421410277B9EF83E3FF81BAADBB251F964F163C0617C7"

    invoke-static {v0, v1}, Lcom/lbe/security/service/su/SuContentProvider;->a(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_11

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-ltz v3, :cond_4

    if-gez v2, :cond_5

    :cond_4
    move-object v0, v8

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "accept"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "reject"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {p0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "prompt"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "accept"

    invoke-static {v9, v0}, Lcom/lbe/security/service/su/SuContentProvider;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "reject"

    invoke-static {v10, v0}, Lcom/lbe/security/service/su/SuContentProvider;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "prompt"

    invoke-static {v4, v0}, Lcom/lbe/security/service/su/SuContentProvider;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "enable_su_service"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, v2}, Lcom/lbe/security/service/su/SuContentProvider;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x1000

    invoke-static {v9, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/lbe/security/ui/su/SuEnableDialog;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "extra_pkg_uid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x1000

    invoke-static {v10, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    move v0, v1

    move-object v1, v8

    :goto_1
    const/16 v5, 0xa

    if-ge v0, v5, :cond_b

    if-eqz v1, :cond_d

    :cond_b
    invoke-virtual {v1, v2}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/lbe/security/bean/e;->e()I

    move-result v0

    const/16 v5, 0x2710

    if-lt v0, v5, :cond_10

    const/16 v0, 0x200

    invoke-virtual {v2, v0}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_c

    const/16 v0, 0x200

    invoke-virtual {v1, v2, v0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;I)V

    :cond_c
    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v2, v1}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lbe/security/bean/k;->a(I)Lcom/lbe/security/bean/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/bean/h;->c()I

    move-result v0

    if-ne v0, v7, :cond_f

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lbe/security/service/su/a;

    invoke-direct {v1, p0, v3, v2}, Lcom/lbe/security/service/su/a;-><init>(Lcom/lbe/security/service/su/SuContentProvider;ILcom/lbe/security/bean/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/high16 v0, 0x1000

    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v1

    if-nez v1, :cond_e

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    if-nez v0, :cond_10

    invoke-static {}, Lcom/lbe/security/service/privacy/q;->a()Lcom/lbe/security/service/privacy/q;

    move-result-object v9

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    invoke-virtual {v2}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    const/16 v2, 0x200

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07006b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    const/high16 v0, 0x1000

    invoke-static {v10, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/lbe/security/service/privacy/q;->a()Lcom/lbe/security/service/privacy/q;

    move-result-object v10

    new-instance v0, Lcom/lbe/security/bean/EventLog;

    invoke-virtual {v2}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    const/16 v2, 0x200

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/lbe/security/service/su/SuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07006b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/EventLog;-><init>(IIJLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/bean/EventLog;)V

    const/high16 v0, 0x1000

    invoke-static {v9, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v8

    goto/16 :goto_0

    :cond_11
    move-object v0, v8

    goto/16 :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
