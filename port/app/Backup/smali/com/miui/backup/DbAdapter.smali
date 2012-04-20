.class public Lcom/miui/backup/DbAdapter;
.super Ljava/lang/Object;
.source "DbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/DbAdapter$DatabaseHelper;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabaseName:Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/miui/backup/DbAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "ctx"
    .parameter "databaseName"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/miui/backup/DbAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/miui/backup/DbAdapter;->mDatabaseName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/DbAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/miui/backup/DbAdapter;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/backup/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 110
    iget-object v0, p0, Lcom/miui/backup/DbAdapter;->mDbHelper:Lcom/miui/backup/DbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/backup/DbAdapter$DatabaseHelper;->close()V

    .line 111
    return-void
.end method

.method public fetchAllApps()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/miui/backup/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "apps"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public open()Lcom/miui/backup/DbAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/miui/backup/DbAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/miui/backup/DbAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/backup/DbAdapter$DatabaseHelper;-><init>(Lcom/miui/backup/DbAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/DbAdapter;->mDbHelper:Lcom/miui/backup/DbAdapter$DatabaseHelper;

    .line 104
    iget-object v0, p0, Lcom/miui/backup/DbAdapter;->mDbHelper:Lcom/miui/backup/DbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/backup/DbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    return-object p0
.end method
