.class public Lcom/miui/notes/gtask/data/TaskList;
.super Lcom/miui/notes/gtask/data/Node;
.source "TaskList.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/notes/gtask/data/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/miui/notes/gtask/data/TaskList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/notes/gtask/data/Node;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/notes/gtask/data/TaskList;->mIndex:I

    .line 28
    return-void
.end method


# virtual methods
.method public addChildTask(Lcom/miui/notes/gtask/data/Task;)Z
    .locals 3
    .parameter "task"

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, ret:Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 211
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/miui/notes/gtask/data/Task;->setPriorSibling(Lcom/miui/notes/gtask/data/Task;)V

    .line 215
    invoke-virtual {p1, p0}, Lcom/miui/notes/gtask/data/Task;->setParent(Lcom/miui/notes/gtask/data/TaskList;)V

    .line 218
    :cond_0
    return v0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/notes/gtask/data/Task;

    goto :goto_0
.end method

.method public getChildTaskIndex(Lcom/miui/notes/gtask/data/Task;)I
    .locals 1
    .parameter "task"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCreateAction(I)Lorg/json/JSONObject;
    .locals 5
    .parameter "actionId"

    .prologue
    .line 31
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v2, js:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action_type"

    const-string v4, "create"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v3, "action_id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string v3, "index"

    iget v4, p0, Lcom/miui/notes/gtask/data/TaskList;->mIndex:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v1, entity:Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/TaskList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v3, "creator_id"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v3, "entity_type"

    const-string v4, "GROUP"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v3, "entity_delta"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object v2

    .line 52
    .end local v1           #entity:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Lorg/json/JSONException;
    sget-object v3, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    new-instance v3, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v4, "fail to generate tasklist-create jsonobject"

    invoke-direct {v3, v4}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getLocalJSONFromContent()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 146
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v3, js:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v1, folder:Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/TaskList;->getName()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, folderName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/TaskList;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[MIUI_Notes]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    const-string v4, "[MIUI_Notes]"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_0
    const-string v4, "snippet"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v4, "Default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Call_Note"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    :cond_1
    const-string v4, "type"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    :goto_0
    const-string v4, "meta_note"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    .end local v1           #folder:Lorg/json/JSONObject;
    .end local v2           #folderName:Ljava/lang/String;
    .end local v3           #js:Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 158
    .restart local v1       #folder:Lorg/json/JSONObject;
    .restart local v2       #folderName:Ljava/lang/String;
    .restart local v3       #js:Lorg/json/JSONObject;
    :cond_2
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v1           #folder:Lorg/json/JSONObject;
    .end local v2           #folderName:Ljava/lang/String;
    .end local v3           #js:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Lorg/json/JSONException;
    sget-object v4, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 166
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSyncAction(Landroid/database/Cursor;)I
    .locals 7
    .parameter "c"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x5

    .line 172
    const/16 v3, 0xd

    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 174
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/TaskList;->getLastModified()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 200
    :goto_0
    return v1

    .line 179
    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    .line 183
    :cond_1
    const/16 v3, 0xf

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/TaskList;->getGid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 184
    sget-object v2, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    const-string v3, "gtask id doesn\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/16 v3, 0xc

    :try_start_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/TaskList;->getLastModified()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    move v1, v2

    .line 189
    goto :goto_0

    :cond_3
    move v1, v2

    .line 192
    goto :goto_0
.end method

.method public getUpdateAction(I)Lorg/json/JSONObject;
    .locals 5
    .parameter "actionId"

    .prologue
    .line 62
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v2, js:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action_type"

    const-string v4, "update"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v3, "action_id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v3, "id"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/TaskList;->getGid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v1, entity:Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/TaskList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v3, "deleted"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/TaskList;->getDeleted()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 79
    const-string v3, "entity_delta"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object v2

    .line 81
    .end local v1           #entity:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Lorg/json/JSONException;
    sget-object v3, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 84
    new-instance v3, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v4, "fail to generate tasklist-update jsonobject"

    invoke-direct {v3, v4}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public removeChildTask(Lcom/miui/notes/gtask/data/Task;)Z
    .locals 5
    .parameter "task"

    .prologue
    const/4 v3, 0x0

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, ret:Z
    iget-object v2, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 250
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 253
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p1, v3}, Lcom/miui/notes/gtask/data/Task;->setPriorSibling(Lcom/miui/notes/gtask/data/Task;)V

    .line 256
    invoke-virtual {p1, v3}, Lcom/miui/notes/gtask/data/Task;->setParent(Lcom/miui/notes/gtask/data/TaskList;)V

    .line 259
    iget-object v2, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/notes/gtask/data/Task;

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/miui/notes/gtask/data/Task;->setPriorSibling(Lcom/miui/notes/gtask/data/Task;)V

    .line 265
    :cond_0
    return v1

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/miui/notes/gtask/data/TaskList;->mChildren:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/notes/gtask/data/Task;

    goto :goto_0
.end method

.method public setContentByLocalJSON(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "js"

    .prologue
    .line 117
    if-eqz p1, :cond_0

    const-string v3, "meta_note"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    :cond_0
    sget-object v3, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    const-string v4, "setContentByLocalJSON: nothing is avaiable"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    :try_start_0
    const-string v3, "meta_note"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 124
    .local v1, folder:Lorg/json/JSONObject;
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 125
    const-string v3, "snippet"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MIUI_Notes]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/notes/gtask/data/TaskList;->setName(Ljava/lang/String;)V

    .line 142
    .end local v1           #folder:Lorg/json/JSONObject;
    .end local v2           #name:Ljava/lang/String;
    :goto_0
    return-void

    .line 127
    .restart local v1       #folder:Lorg/json/JSONObject;
    :cond_2
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 128
    const-string v3, "_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 129
    const-string v3, "[MIUI_Notes]Default"

    invoke-virtual {p0, v3}, Lcom/miui/notes/gtask/data/TaskList;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1           #folder:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Lorg/json/JSONException;
    sget-object v3, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #folder:Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string v3, "_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 131
    const-string v3, "[MIUI_Notes]Call_Note"

    invoke-virtual {p0, v3}, Lcom/miui/notes/gtask/data/TaskList;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_4
    sget-object v3, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    const-string v4, "invalid system folder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_5
    sget-object v3, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    const-string v4, "error type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setContentByRemoteJSON(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "js"

    .prologue
    .line 91
    if-eqz p1, :cond_2

    .line 94
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/gtask/data/TaskList;->setGid(Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string v1, "last_modified"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "last_modified"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/notes/gtask/data/TaskList;->setLastModified(J)V

    .line 104
    :cond_1
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/gtask/data/TaskList;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_2
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Lorg/json/JSONException;
    sget-object v1, Lcom/miui/notes/gtask/data/TaskList;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 111
    new-instance v1, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v2, "fail to get tasklist content from jsonobject"

    invoke-direct {v1, v2}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
