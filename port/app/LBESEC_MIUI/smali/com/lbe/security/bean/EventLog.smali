.class public Lcom/lbe/security/bean/EventLog;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "%1$s=?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lbe/security/bean/EventLog;->a:Ljava/lang/String;

    const-string v0, "%1$s=?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "pkg"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lbe/security/bean/EventLog;->b:Ljava/lang/String;

    new-instance v0, Lcom/lbe/security/bean/f;

    invoke-direct {v0}, Lcom/lbe/security/bean/f;-><init>()V

    sput-object v0, Lcom/lbe/security/bean/EventLog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lbe/security/bean/EventLog;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lbe/security/bean/EventLog;->c:I

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lbe/security/bean/EventLog;->c:I

    iput p1, p0, Lcom/lbe/security/bean/EventLog;->d:I

    iput p2, p0, Lcom/lbe/security/bean/EventLog;->e:I

    iput-wide p3, p0, Lcom/lbe/security/bean/EventLog;->f:J

    iput-object p5, p0, Lcom/lbe/security/bean/EventLog;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/lbe/security/bean/EventLog;->h:Ljava/lang/String;

    iput p7, p0, Lcom/lbe/security/bean/EventLog;->i:I

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11

    const-string v0, "id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pkg"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "type"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "timestamp"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "title"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "content"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "action"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v7

    :cond_0
    new-instance v8, Lcom/lbe/security/bean/EventLog;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/lbe/security/bean/EventLog;-><init>(B)V

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/lbe/security/bean/EventLog;->c:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/lbe/security/bean/EventLog;->d:I

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/lbe/security/bean/EventLog;->e:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/lbe/security/bean/EventLog;->f:J

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/lbe/security/bean/EventLog;->g:Ljava/lang/String;

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/lbe/security/bean/EventLog;->h:Ljava/lang/String;

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/lbe/security/bean/EventLog;->i:I

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/lbe/security/bean/EventLog;I)V
    .locals 0

    iput p1, p0, Lcom/lbe/security/bean/EventLog;->c:I

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/bean/EventLog;J)V
    .locals 0

    iput-wide p1, p0, Lcom/lbe/security/bean/EventLog;->f:J

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/bean/EventLog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/bean/EventLog;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/lbe/security/bean/EventLog;I)V
    .locals 0

    iput p1, p0, Lcom/lbe/security/bean/EventLog;->d:I

    return-void
.end method

.method static synthetic b(Lcom/lbe/security/bean/EventLog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/bean/EventLog;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/lbe/security/bean/EventLog;I)V
    .locals 0

    iput p1, p0, Lcom/lbe/security/bean/EventLog;->e:I

    return-void
.end method

.method static synthetic d(Lcom/lbe/security/bean/EventLog;I)V
    .locals 0

    iput p1, p0, Lcom/lbe/security/bean/EventLog;->i:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/lbe/security/bean/EventLog;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/lbe/security/bean/EventLog;->e:I

    return v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/lbe/security/bean/EventLog;->f:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/bean/EventLog;->g:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/lbe/security/bean/EventLog;->i:I

    return v0
.end method

.method public final f()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/lbe/security/bean/EventLog;->c:I

    if-ltz v1, :cond_0

    const-string v1, "id"

    iget v2, p0, Lcom/lbe/security/bean/EventLog;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "pkg"

    iget v2, p0, Lcom/lbe/security/bean/EventLog;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    iget v2, p0, Lcom/lbe/security/bean/EventLog;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/lbe/security/bean/EventLog;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "title"

    iget-object v2, p0, Lcom/lbe/security/bean/EventLog;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    iget-object v2, p0, Lcom/lbe/security/bean/EventLog;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    iget v2, p0, Lcom/lbe/security/bean/EventLog;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/lbe/security/bean/EventLog;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/lbe/security/bean/EventLog;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/lbe/security/bean/EventLog;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/lbe/security/bean/EventLog;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/lbe/security/bean/EventLog;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lbe/security/bean/EventLog;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/lbe/security/bean/EventLog;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
