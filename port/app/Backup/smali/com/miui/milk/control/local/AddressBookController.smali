.class public Lcom/miui/milk/control/local/AddressBookController;
.super Lcom/miui/milk/control/local/BaseController;
.source "AddressBookController.java"


# instance fields
.field private mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

.field private mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lcom/miui/milk/source/contact2/GroupManager;

    invoke-direct {v0, p1, v2}, Lcom/miui/milk/source/contact2/GroupManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    .line 36
    new-instance v0, Lcom/miui/milk/source/contact2/ContactManager;

    iget-object v1, p0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-direct {v0, p1, v2, v1}, Lcom/miui/milk/source/contact2/ContactManager;-><init>(Landroid/content/Context;ZLcom/miui/milk/source/contact2/GroupManager;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    .line 37
    return-void
.end method

.method private contactApplyBatch(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v1, "AddressBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ops size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v1, p1}, Lcom/miui/milk/source/contact2/ContactManager;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 253
    .local v0, res:[Landroid/content/ContentProviderResult;
    const-string v1, "AddressBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    array-length v1, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 255
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "contact applyBatch error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private groupApplyBatch(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v1, "AddressBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ops size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v1, p1}, Lcom/miui/milk/source/contact2/GroupManager;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 203
    .local v0, res:[Landroid/content/ContentProviderResult;
    const-string v1, "AddressBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "contact"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v4, 0x190

    .line 211
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 212
    .local v2, index:I
    iget-object v3, p0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/miui/milk/source/contact2/ContactManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 213
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 238
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 239
    invoke-direct {p0, p3}, Lcom/miui/milk/control/local/AddressBookController;->contactApplyBatch(Ljava/util/ArrayList;)V

    .line 246
    :cond_1
    return-void

    .line 217
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_4

    .line 220
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_3

    .line 221
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 220
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 224
    :cond_3
    invoke-direct {p0, p3}, Lcom/miui/milk/control/local/AddressBookController;->contactApplyBatch(Ljava/util/ArrayList;)V

    .line 226
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 228
    iget-object v3, p0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/miui/milk/source/contact2/ContactManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 231
    .end local v1           #i:I
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 233
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "too many add ops per contact "

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v2           #index:I
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AddressBookController"

    const-string v4, "Cannot prepare import contact "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    throw v0
.end method

.method private prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "group"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Group;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    .local p3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 175
    const-string v3, "AddressBookController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare import group to account : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    :try_start_0
    const-string v3, "AddressBookController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare Import Group title : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, title:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 181
    iget-object v3, p0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v3, v2, p2}, Lcom/miui/milk/source/contact2/GroupManager;->loadByTitle(Ljava/lang/String;Landroid/accounts/Account;)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v1

    .line 182
    .local v1, existGroup:Lcom/miui/milk/model/ContactProtos2$Group;
    if-nez v1, :cond_1

    .line 183
    iget-object v3, p0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/miui/milk/source/contact2/GroupManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 186
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 187
    invoke-direct {p0, p3}, Lcom/miui/milk/control/local/AddressBookController;->groupApplyBatch(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1           #existGroup:Lcom/miui/milk/model/ContactProtos2$Group;
    :cond_1
    return-void

    .line 192
    .end local v2           #title:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AddressBookController"

    const-string v4, "Cannot prepare import group "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    throw v0
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 22
    .parameter "exportFile"

    .prologue
    .line 41
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 45
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v3

    .line 46
    .local v3, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/source/contact2/GroupManager;->prepareAllGroupIds()Ljava/util/Vector;

    move-result-object v12

    .line 47
    .local v12, groupIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/source/contact2/ContactManager;->prepareAllContactIds()Ljava/util/Vector;

    move-result-object v6

    .line 48
    .local v6, contactIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/milk/control/local/AddressBookController;->mTotalExportSize:J

    .line 50
    const/4 v10, 0x0

    .line 51
    .local v10, groupCount:I
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 52
    .local v13, groupMD5Set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 53
    .local v11, groupId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 118
    .end local v11           #groupId:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 55
    .restart local v11       #groupId:Ljava/lang/String;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v18, v0

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/miui/milk/source/contact2/GroupManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v9

    .line 56
    .local v9, group:Lcom/miui/milk/model/ContactProtos2$Group;
    if-eqz v9, :cond_1

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/miui/milk/source/contact2/GroupManager;->getGroupMD5(Lcom/miui/milk/model/ContactProtos2$Group;)Ljava/lang/String;

    move-result-object v15

    .line 58
    .local v15, md5:Ljava/lang/String;
    if-eqz v15, :cond_4

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 59
    :cond_4
    invoke-virtual {v3, v9}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 60
    add-int/lit8 v10, v10, 0x1

    .line 61
    if-eqz v15, :cond_1

    .line 62
    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v9           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v15           #md5:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 67
    .local v8, e:Ljava/lang/Exception;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot load group "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 71
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #groupId:Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 72
    .local v7, contactMD5Set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/milk/control/local/AddressBookController;->mCurrExportIndex:J

    .line 73
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 74
    .local v5, contactId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 76
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/miui/milk/source/contact2/ContactManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v4

    .line 77
    .local v4, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    if-eqz v4, :cond_6

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/miui/milk/source/contact2/ContactManager;->getContactMD5(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/lang/String;

    move-result-object v15

    .line 79
    .restart local v15       #md5:Ljava/lang/String;
    const-string v18, "AddressBookController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "md5 : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz v15, :cond_7

    invoke-virtual {v7, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 81
    :cond_7
    invoke-virtual {v3, v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 82
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCurrExportIndex:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/milk/control/local/AddressBookController;->mCurrExportIndex:J

    .line 83
    if-eqz v15, :cond_6

    .line 84
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 88
    .end local v4           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v15           #md5:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 89
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot load contact "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 90
    .end local v8           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v8

    .line 91
    .local v8, e:Ljava/io/IOException;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot load contact "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 92
    .end local v8           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 93
    .local v8, e:Ljava/lang/Exception;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot load contact "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 97
    .end local v5           #contactId:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_8
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v17

    .line 98
    .local v17, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->build()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 99
    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 101
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 105
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 106
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 107
    .local v16, output:Ljava/io/FileOutputStream;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 108
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 109
    const-string v18, "AddressBookController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Export Group Counts : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v18, "AddressBookController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Export Contact Counts : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/milk/control/local/AddressBookController;->mCurrExportIndex:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_1

    .line 111
    .end local v16           #output:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    .line 112
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot export addressbook "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    goto/16 :goto_1

    .line 114
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v8

    .line 115
    .local v8, e:Ljava/io/IOException;
    const-string v18, "AddressBookController"

    const-string v19, "Cannot export addressbook "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    goto/16 :goto_1
.end method

.method public importData(Ljava/io/File;)V
    .locals 14
    .parameter "importFile"

    .prologue
    .line 123
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 124
    .local v6, input:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 126
    .local v0, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    invoke-static {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    .line 127
    .local v8, syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 128
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasVersion()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "1"

    invoke-virtual {v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 130
    invoke-virtual {v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    .line 133
    :cond_0
    iget-boolean v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    if-nez v10, :cond_1

    if-nez v0, :cond_2

    .line 170
    .end local v0           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v6           #input:Ljava/io/FileInputStream;
    .end local v8           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 135
    .restart local v0       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .restart local v6       #input:Ljava/io/FileInputStream;
    .restart local v8       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportIndex:J

    .line 136
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mTotalImportSize:J

    .line 137
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 138
    .local v9, totalGroupSize:I
    const/4 v4, 0x0

    .line 139
    .local v4, groupCount:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v7, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos2$Group;

    .line 142
    .local v3, group:Lcom/miui/milk/model/ContactProtos2$Group;
    iget-boolean v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    if-nez v10, :cond_1

    .line 143
    const/4 v10, 0x0

    invoke-direct {p0, v3, v10, v7}, Lcom/miui/milk/control/local/AddressBookController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 144
    add-int/lit8 v4, v4, 0x1

    .line 145
    if-eq v4, v9, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x64

    if-lt v10, v11, :cond_3

    .line 146
    :cond_4
    invoke-direct {p0, v7}, Lcom/miui/milk/control/local/AddressBookController;->groupApplyBatch(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 160
    .end local v0           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v3           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v4           #groupCount:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #input:Ljava/io/FileInputStream;
    .end local v7           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v9           #totalGroupSize:I
    :catch_0
    move-exception v2

    .line 161
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v10, "AddressBookController"

    const-string v11, "Cannot import addressbook "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    goto :goto_0

    .line 150
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .restart local v4       #groupCount:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #input:Ljava/io/FileInputStream;
    .restart local v7       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v8       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v9       #totalGroupSize:I
    :cond_5
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 151
    iget-object v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v10}, Lcom/miui/milk/source/contact2/ContactManager;->prepareGroup()V

    .line 152
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 153
    .local v1, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    iget-boolean v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mCanceled:Z

    if-nez v10, :cond_1

    .line 154
    const/4 v10, 0x0

    invoke-direct {p0, v1, v10, v7}, Lcom/miui/milk/control/local/AddressBookController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 155
    iget-wide v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportIndex:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportIndex:J

    .line 156
    iget-wide v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mCurrImportIndex:J

    iget-wide v12, p0, Lcom/miui/milk/control/local/AddressBookController;->mTotalImportSize:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x64

    if-lt v10, v11, :cond_6

    .line 157
    :cond_7
    invoke-direct {p0, v7}, Lcom/miui/milk/control/local/AddressBookController;->contactApplyBatch(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 163
    .end local v0           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v1           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v4           #groupCount:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #input:Ljava/io/FileInputStream;
    .end local v7           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v9           #totalGroupSize:I
    :catch_1
    move-exception v2

    .line 164
    .local v2, e:Ljava/io/IOException;
    const-string v10, "AddressBookController"

    const-string v11, "Cannot import addressbook "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    goto/16 :goto_0

    .line 166
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 167
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "AddressBookController"

    const-string v11, "Cannot import addressbook "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/miui/milk/control/local/AddressBookController;->mException:Z

    goto/16 :goto_0
.end method
