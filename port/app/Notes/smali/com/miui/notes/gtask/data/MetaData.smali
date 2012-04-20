.class public Lcom/miui/notes/gtask/data/MetaData;
.super Lcom/miui/notes/gtask/data/Task;
.source "MetaData.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRelatedGid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/miui/notes/gtask/data/MetaData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/gtask/data/MetaData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/notes/gtask/data/Task;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/MetaData;->mRelatedGid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocalJSONFromContent()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "MetaData:getLocalJSONFromContent should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRelatedGid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/notes/gtask/data/MetaData;->mRelatedGid:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncAction(Landroid/database/Cursor;)I
    .locals 2
    .parameter "c"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "MetaData:getSyncAction should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isWorthSaving()Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/MetaData;->getNotes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentByLocalJSON(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "js"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "MetaData:setContentByLocalJSON should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentByRemoteJSON(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "js"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/miui/notes/gtask/data/Task;->setContentByRemoteJSON(Lorg/json/JSONObject;)V

    .line 39
    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/MetaData;->getNotes()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 41
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/MetaData;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, metaInfo:Lorg/json/JSONObject;
    const-string v2, "meta_gid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/notes/gtask/data/MetaData;->mRelatedGid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #metaInfo:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Lorg/json/JSONException;
    sget-object v2, Lcom/miui/notes/gtask/data/MetaData;->TAG:Ljava/lang/String;

    const-string v3, "failed to get related gid"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/notes/gtask/data/MetaData;->mRelatedGid:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMeta(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "gid"
    .parameter "metaInfo"

    .prologue
    .line 19
    :try_start_0
    const-string v1, "meta_gid"

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/gtask/data/MetaData;->setNotes(Ljava/lang/String;)V

    .line 24
    const-string v1, "[META INFO] DON\'T UPDATE AND DELETE"

    invoke-virtual {p0, v1}, Lcom/miui/notes/gtask/data/MetaData;->setName(Ljava/lang/String;)V

    .line 25
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, e:Lorg/json/JSONException;
    sget-object v1, Lcom/miui/notes/gtask/data/MetaData;->TAG:Ljava/lang/String;

    const-string v2, "failed to put related gid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
