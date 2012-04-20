.class public abstract Lcom/miui/notes/gtask/data/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private mDeleted:Z

.field private mGid:Ljava/lang/String;

.field private mLastModified:J

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/Node;->mGid:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/gtask/data/Node;->mName:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/Node;->mLastModified:J

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/notes/gtask/data/Node;->mDeleted:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getDeleted()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/miui/notes/gtask/data/Node;->mDeleted:Z

    return v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/notes/gtask/data/Node;->mGid:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/miui/notes/gtask/data/Node;->mLastModified:J

    return-wide v0
.end method

.method public abstract getLocalJSONFromContent()Lorg/json/JSONObject;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/notes/gtask/data/Node;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSyncAction(Landroid/database/Cursor;)I
.end method

.method public abstract getUpdateAction(I)Lorg/json/JSONObject;
.end method

.method public abstract setContentByLocalJSON(Lorg/json/JSONObject;)V
.end method

.method public setDeleted(Z)V
    .locals 0
    .parameter "deleted"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/miui/notes/gtask/data/Node;->mDeleted:Z

    .line 68
    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0
    .parameter "gid"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/notes/gtask/data/Node;->mGid:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setLastModified(J)V
    .locals 0
    .parameter "lastModified"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/miui/notes/gtask/data/Node;->mLastModified:J

    .line 64
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/notes/gtask/data/Node;->mName:Ljava/lang/String;

    .line 60
    return-void
.end method
