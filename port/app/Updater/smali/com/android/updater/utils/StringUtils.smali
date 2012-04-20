.class public Lcom/android/updater/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static sBranchCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/updater/utils/StringUtils;->sBranchCodeMap:Ljava/util/HashMap;

    .line 19
    sget-object v0, Lcom/android/updater/utils/StringUtils;->sBranchCodeMap:Ljava/util/HashMap;

    const-string v1, "S"

    const v2, 0x7f050040

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/android/updater/utils/StringUtils;->sBranchCodeMap:Ljava/util/HashMap;

    const-string v1, "X"

    const v2, 0x7f050041

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/android/updater/utils/StringUtils;->sBranchCodeMap:Ljava/util/HashMap;

    const-string v1, "D"

    const v2, 0x7f050042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/updater/utils/StringUtils;->sBranchCodeMap:Ljava/util/HashMap;

    const-string v1, "E"

    const v2, 0x7f050045

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/updater/utils/StringUtils;->sBranchCodeMap:Ljava/util/HashMap;

    const-string v1, "F"

    const v2, 0x7f050043

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 21
    .parameter "newVersion"
    .parameter "oldVersion"

    .prologue
    .line 82
    const-string v18, "StringUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "NewVersion: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", oldVersion: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 84
    const/16 v18, 0x0

    .line 146
    :goto_0
    return v18

    .line 88
    :cond_0
    const-string v18, "-"

    const-string v19, "\\."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 89
    const-string v18, "-"

    const-string v19, "\\."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    const-string v18, "\\."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 92
    .local v15, sNewVersion:[Ljava/lang/String;
    const-string v18, "\\."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 94
    .local v16, sOldVersion:[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v10, newVersionArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v13, oldVersionArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v14, v3, v7

    .line 98
    .local v14, s:Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 100
    .end local v14           #s:Ljava/lang/String;
    :cond_1
    move-object/from16 v3, v16

    array-length v8, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v14, v3, v7

    .line 101
    .restart local v14       #s:Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 106
    .end local v14           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 107
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v4, v18, v19

    .line 108
    .local v4, difference:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    if-ge v6, v4, :cond_4

    .line 109
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 112
    .end local v4           #difference:I
    .end local v6           #i:I
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v4, v18, v19

    .line 113
    .restart local v4       #difference:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_4
    if-ge v6, v4, :cond_4

    .line 114
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 118
    :cond_4
    const/4 v6, 0x0

    .line 119
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 120
    .restart local v14       #s:Ljava/lang/String;
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 123
    .local v11, old:Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 124
    .local v9, newVer:I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 125
    .local v12, oldVer:I
    if-le v9, v12, :cond_5

    .line 126
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 127
    :cond_5
    if-ge v9, v12, :cond_6

    .line 128
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 130
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 131
    .end local v9           #newVer:I
    .end local v12           #oldVer:I
    :catch_0
    move-exception v5

    .line 134
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v14, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    .line 135
    .local v17, temp:I
    if-gez v17, :cond_7

    .line 136
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 137
    :cond_7
    if-lez v17, :cond_8

    .line 138
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 141
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 146
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v11           #old:Ljava/lang/String;
    .end local v14           #s:Ljava/lang/String;
    .end local v17           #temp:I
    :cond_9
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "updateInfo"

    .prologue
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, title:Ljava/lang/String;
    sget-object v3, Lcom/android/updater/utils/StringUtils;->sBranchCodeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getBranchCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 64
    .local v2, versionType:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, suffix:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .end local v0           #suffix:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getUpdateModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "updateInfo"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
