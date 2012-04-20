.class public Lcom/miui/milk/control/cloud/WifiCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "WifiCloudController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/control/cloud/WifiCloudController$1;,
        Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
    }
.end annotation


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 42
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 43
    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fulfillWifiPassword(Lcom/miui/milk/control/callback/AsyncTaskCallback;)Ljava/util/List;
    .locals 36
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/control/callback/AsyncTaskCallback;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v32, Ljava/io/File;

    sget-object v33, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    const-string v34, "wpa_supplicant.conf.tmp"

    invoke-direct/range {v32 .. v34}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v32, wifiTmp:Ljava/io/File;
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v8, v0, [Ljava/lang/String;

    .line 118
    .local v8, cmd:[Ljava/lang/String;
    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "busybox cp -r /data/misc/wifi/wpa_supplicant.conf "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v8, v33

    .line 119
    const/16 v33, 0x1

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "chmod 777 \'"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "\' "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v8, v33

    .line 120
    invoke-static {v8}, Lcom/miui/backup/SysUtils;->runExecSh([Ljava/lang/String;)Z

    .line 123
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    const-wide/16 v33, 0x1f4

    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 125
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_0
    const/4 v10, 0x0

    .line 132
    .local v10, content:[B
    if-eqz v32, :cond_1

    .line 133
    const/16 v18, 0x0

    .line 134
    .local v18, input:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 136
    .local v5, bout:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 137
    .end local v18           #input:Ljava/io/FileInputStream;
    .local v19, input:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v33, 0x200

    move/from16 v0, v33

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 138
    .end local v5           #bout:Ljava/io/ByteArrayOutputStream;
    .local v6, bout:Ljava/io/ByteArrayOutputStream;
    const/16 v33, 0x200

    :try_start_4
    move/from16 v0, v33

    new-array v7, v0, [B

    .line 139
    .local v7, buf:[B
    const/16 v23, 0x0

    .line 140
    .local v23, n:I
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v23

    if-ltz v23, :cond_5

    .line 141
    const/16 v33, 0x0

    move/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    goto :goto_1

    .line 147
    .end local v7           #buf:[B
    .end local v23           #n:I
    :catch_0
    move-exception v12

    move-object v5, v6

    .end local v6           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #bout:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v18, v19

    .line 148
    .end local v19           #input:Ljava/io/FileInputStream;
    .local v12, e:Ljava/io/FileNotFoundException;
    .restart local v18       #input:Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string v33, "WifiCloudController"

    const-string v34, "cannot access to wpa_supplicant.conf.tmp"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    const/4 v10, 0x0

    .line 154
    if-eqz v18, :cond_0

    .line 156
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 160
    :cond_0
    :goto_3
    if-eqz v5, :cond_1

    .line 162
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 171
    .end local v5           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .end local v18           #input:Ljava/io/FileInputStream;
    :cond_1
    :goto_4
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_2

    .line 172
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    .line 175
    :cond_2
    if-eqz v10, :cond_3

    array-length v0, v10

    move/from16 v33, v0

    if-nez v33, :cond_a

    .line 176
    :cond_3
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "EXCEPTION"

    aput-object v35, v33, v34

    const/16 v34, 0x1

    const-string v35, "2102"

    aput-object v35, v33, v34

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    .line 177
    const/16 v31, 0x0

    .line 278
    :cond_4
    :goto_5
    return-object v31

    .line 125
    .end local v10           #content:[B
    :catchall_0
    move-exception v33

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v33
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    .line 126
    :catch_1
    move-exception v33

    goto :goto_0

    .line 143
    .restart local v6       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buf:[B
    .restart local v10       #content:[B
    .restart local v19       #input:Ljava/io/FileInputStream;
    .restart local v23       #n:I
    :cond_5
    const/4 v7, 0x0

    .line 145
    :try_start_a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    move-result-object v10

    .line 154
    if-eqz v19, :cond_6

    .line 156
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 160
    :cond_6
    :goto_6
    if-eqz v6, :cond_1

    .line 162
    :try_start_c
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 163
    :catch_2
    move-exception v33

    goto :goto_4

    .line 150
    .end local v6           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buf:[B
    .end local v19           #input:Ljava/io/FileInputStream;
    .end local v23           #n:I
    .restart local v5       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #input:Ljava/io/FileInputStream;
    :catch_3
    move-exception v12

    .line 151
    .local v12, e:Ljava/io/IOException;
    :goto_7
    :try_start_d
    const-string v33, "WifiCloudController"

    const-string v34, "cannot access to wpa_supplicant.conf.tmp"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 152
    const/4 v10, 0x0

    .line 154
    if-eqz v18, :cond_7

    .line 156
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 160
    :cond_7
    :goto_8
    if-eqz v5, :cond_1

    .line 162
    :try_start_f
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_4

    .line 163
    :catch_4
    move-exception v33

    goto :goto_4

    .line 154
    .end local v12           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v33

    :goto_9
    if-eqz v18, :cond_8

    .line 156
    :try_start_10
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 160
    :cond_8
    :goto_a
    if-eqz v5, :cond_9

    .line 162
    :try_start_11
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 165
    :cond_9
    :goto_b
    throw v33

    .line 180
    .end local v5           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v18           #input:Ljava/io/FileInputStream;
    :cond_a
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v28, pwHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;>;"
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    .line 183
    .local v11, contentStr:Ljava/lang/String;
    const-string v33, "network="

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 184
    .local v27, parts:[Ljava/lang/String;
    move-object/from16 v3, v27

    .local v3, arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v21, v0

    .local v21, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    move v14, v13

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v21           #len$:I
    .local v14, i$:I
    :goto_c
    move/from16 v0, v21

    if-ge v14, v0, :cond_15

    aget-object v26, v3, v14

    .line 185
    .local v26, part:Ljava/lang/String;
    if-eqz v26, :cond_14

    .line 186
    const/16 v33, 0x7b

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 187
    .local v15, index1:I
    const/16 v33, 0x7d

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 188
    .local v16, index2:I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-le v15, v0, :cond_14

    const/16 v33, -0x1

    move/from16 v0, v16

    move/from16 v1, v33

    if-le v0, v1, :cond_14

    move/from16 v0, v16

    if-ge v15, v0, :cond_14

    .line 190
    add-int/lit8 v33, v15, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v33

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, innerStr:Ljava/lang/String;
    const/16 v30, 0x0

    .line 192
    .local v30, ssid:Ljava/lang/String;
    const-string v20, ""

    .line 193
    .local v20, keyMgmt:Ljava/lang/String;
    new-instance v29, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;-><init>(Lcom/miui/milk/control/cloud/WifiCloudController;Lcom/miui/milk/control/cloud/WifiCloudController$1;)V

    .line 195
    .local v29, pwWrap:Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
    const/16 v33, 0x9

    const/16 v34, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    .line 196
    const/16 v33, 0xd

    const/16 v34, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    .line 198
    const-string v33, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 199
    .local v25, pairs:[Ljava/lang/String;
    move-object/from16 v4, v25

    .local v4, arr$:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v22, v0

    .local v22, len$:I
    const/4 v13, 0x0

    .end local v14           #i$:I
    .restart local v13       #i$:I
    :goto_d
    move/from16 v0, v22

    if-ge v13, v0, :cond_13

    aget-object v24, v4, v13

    .line 200
    .local v24, pair:Ljava/lang/String;
    if-nez v24, :cond_c

    .line 199
    :cond_b
    :goto_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 204
    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 205
    const-string v33, "ssid"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 208
    const-string v33, "WifiCloudController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ssid : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 210
    :cond_d
    const-string v33, "key_mgmt"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 213
    const-string v33, "WifiCloudController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "key_mgmt : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 215
    :cond_e
    const-string v33, "psk"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->psk:Ljava/lang/String;

    .line 218
    const-string v33, "WifiCloudController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "psk : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->psk:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 220
    :cond_f
    sget-object v33, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_10

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key0:Ljava/lang/String;

    .line 223
    const-string v33, "WifiCloudController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "wep_key0 : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key0:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 225
    :cond_10
    sget-object v33, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v34, 0x1

    aget-object v33, v33, v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_11

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key1:Ljava/lang/String;

    .line 228
    const-string v33, "WifiCloudController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "wep_key1 : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key1:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 230
    :cond_11
    sget-object v33, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v34, 0x2

    aget-object v33, v33, v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key2:Ljava/lang/String;

    .line 233
    const-string v33, "WifiCloudController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "wep_key2 : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key2:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 235
    :cond_12
    sget-object v33, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v34, 0x3

    aget-object v33, v33, v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key3:Ljava/lang/String;

    .line 238
    const-string v33, "WifiCloudController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "wep_key3 : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key3:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 241
    .end local v24           #pair:Ljava/lang/String;
    :cond_13
    if-eqz v30, :cond_14

    .line 242
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #index1:I
    .end local v16           #index2:I
    .end local v17           #innerStr:Ljava/lang/String;
    .end local v20           #keyMgmt:Ljava/lang/String;
    .end local v22           #len$:I
    .end local v25           #pairs:[Ljava/lang/String;
    .end local v29           #pwWrap:Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
    .end local v30           #ssid:Ljava/lang/String;
    :cond_14
    add-int/lit8 v13, v14, 0x1

    .restart local v13       #i$:I
    move v14, v13

    .end local v13           #i$:I
    .restart local v14       #i$:I
    goto/16 :goto_c

    .line 249
    .end local v26           #part:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v31

    .line 250
    .local v31, wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v31, :cond_16

    .line 251
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 254
    :cond_16
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v14           #i$:I
    .local v13, i$:Ljava/util/Iterator;
    :cond_17
    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 255
    .local v9, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 256
    .restart local v30       #ssid:Ljava/lang/String;
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v33, v0

    sget-object v34, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v33 .. v34}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 258
    .restart local v20       #keyMgmt:Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;

    .line 259
    .restart local v29       #pwWrap:Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
    if-eqz v29, :cond_17

    .line 260
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->psk:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_18

    .line 261
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->psk:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 263
    :cond_18
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key0:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_19

    .line 264
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key0:Ljava/lang/String;

    move-object/from16 v35, v0

    aput-object v35, v33, v34

    .line 266
    :cond_19
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key1:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1a

    .line 267
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key1:Ljava/lang/String;

    move-object/from16 v35, v0

    aput-object v35, v33, v34

    .line 269
    :cond_1a
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key2:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1b

    .line 270
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key2:Ljava/lang/String;

    move-object/from16 v35, v0

    aput-object v35, v33, v34

    .line 272
    :cond_1b
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key3:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_17

    .line 273
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key3:Ljava/lang/String;

    move-object/from16 v35, v0

    aput-object v35, v33, v34

    goto/16 :goto_f

    .line 157
    .end local v9           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v11           #contentStr:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v20           #keyMgmt:Ljava/lang/String;
    .end local v27           #parts:[Ljava/lang/String;
    .end local v28           #pwHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;>;"
    .end local v29           #pwWrap:Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
    .end local v30           #ssid:Ljava/lang/String;
    .end local v31           #wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v6       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buf:[B
    .restart local v19       #input:Ljava/io/FileInputStream;
    .restart local v23       #n:I
    :catch_5
    move-exception v33

    goto/16 :goto_6

    .end local v6           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buf:[B
    .end local v19           #input:Ljava/io/FileInputStream;
    .end local v23           #n:I
    .restart local v5       #bout:Ljava/io/ByteArrayOutputStream;
    .local v12, e:Ljava/io/FileNotFoundException;
    .restart local v18       #input:Ljava/io/FileInputStream;
    :catch_6
    move-exception v33

    goto/16 :goto_3

    .line 163
    :catch_7
    move-exception v33

    goto/16 :goto_4

    .line 157
    .local v12, e:Ljava/io/IOException;
    :catch_8
    move-exception v33

    goto/16 :goto_8

    .end local v12           #e:Ljava/io/IOException;
    :catch_9
    move-exception v34

    goto/16 :goto_a

    .line 163
    :catch_a
    move-exception v34

    goto/16 :goto_b

    .line 154
    .end local v18           #input:Ljava/io/FileInputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v33

    move-object/from16 v18, v19

    .end local v19           #input:Ljava/io/FileInputStream;
    .restart local v18       #input:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v5           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v18           #input:Ljava/io/FileInputStream;
    .restart local v6       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v33

    move-object v5, v6

    .end local v6           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #bout:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v18, v19

    .end local v19           #input:Ljava/io/FileInputStream;
    .restart local v18       #input:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 150
    .end local v18           #input:Ljava/io/FileInputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    :catch_b
    move-exception v12

    move-object/from16 v18, v19

    .end local v19           #input:Ljava/io/FileInputStream;
    .restart local v18       #input:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .end local v5           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v18           #input:Ljava/io/FileInputStream;
    .restart local v6       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    :catch_c
    move-exception v12

    move-object v5, v6

    .end local v6           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #bout:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v18, v19

    .end local v19           #input:Ljava/io/FileInputStream;
    .restart local v18       #input:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 147
    :catch_d
    move-exception v12

    goto/16 :goto_2

    .end local v18           #input:Ljava/io/FileInputStream;
    .restart local v19       #input:Ljava/io/FileInputStream;
    :catch_e
    move-exception v12

    move-object/from16 v18, v19

    .end local v19           #input:Ljava/io/FileInputStream;
    .restart local v18       #input:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 962
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 963
    :cond_0
    const/4 v0, 0x1

    .line 965
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 940
    array-length v1, p1

    .line 942
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 944
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 945
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    .end local v0           #i:I
    :goto_1
    return v0

    .line 944
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 948
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 920
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 921
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 925
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 927
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 928
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 933
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 936
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parsePairValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pair"

    .prologue
    .line 290
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, pairValue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 294
    return-object v0
.end method

.method private prepareWifiConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/miui/milk/model/WifiProtos$WifiConfig;
    .locals 19
    .parameter "networkConf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->newBuilder()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v15

    .line 493
    .local v15, wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 494
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setSsid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 495
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ssid : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getSsid()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 498
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setBssid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 500
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 501
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPsk(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 502
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "psk : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getPsk()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 505
    const/4 v10, 0x0

    .local v10, k:I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_7

    .line 507
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    if-eqz v16, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    const-string v17, "*"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 508
    if-nez v10, :cond_3

    .line 509
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey0(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 510
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "web_key0 : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getWepKey0()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_3
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_4

    .line 513
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey1(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 514
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "web_key1 : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getWepKey1()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_4
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v10, v0, :cond_5

    .line 517
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey2(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 518
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "web_key2 : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getWepKey2()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_5
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v10, v0, :cond_6

    .line 521
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey3(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 522
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "web_key3 : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getWepKey3()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 529
    .end local v10           #k:I
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepTxKeyIndex(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 530
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPriority(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 531
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    const/16 v16, 0x1

    :goto_1
    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setScanSsid(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 534
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, allowedKeyManagementString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    if-eqz v16, :cond_8

    .line 537
    invoke-virtual {v15, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setKeyMgmt(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 538
    const-string v16, "WifiCloudController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "KeyMgmt : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->getKeyMgmt()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 542
    .local v5, allowedProtocolsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    if-eqz v16, :cond_9

    .line 543
    invoke-virtual {v15, v5}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setProto(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 545
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, allowedAuthAlgorithmsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    if-eqz v16, :cond_a

    .line 548
    invoke-virtual {v15, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setAuthAlg(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 550
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, allowedPairwiseCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    if-eqz v16, :cond_b

    .line 553
    invoke-virtual {v15, v4}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPairwise(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 555
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, allowedGroupCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    if-eqz v16, :cond_c

    .line 558
    invoke-virtual {v15, v2}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setGroup(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 562
    :cond_c
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v6, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v11, v6

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v11, :cond_17

    aget-object v8, v6, v9

    .line 563
    .local v8, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v14

    .line 564
    .local v14, varName:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v13

    .line 565
    .local v13, value:Ljava/lang/String;
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_e

    .line 566
    move-object v12, v13

    .line 567
    .local v12, oriValue:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v8, v0, :cond_d

    .line 568
    invoke-static {v13}, Lcom/miui/milk/control/cloud/WifiCloudController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 571
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_10

    .line 572
    invoke-virtual {v15, v13}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setEap(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 562
    .end local v12           #oriValue:Ljava/lang/String;
    :cond_e
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 531
    .end local v1           #allowedAuthAlgorithmsString:Ljava/lang/String;
    .end local v2           #allowedGroupCiphersString:Ljava/lang/String;
    .end local v3           #allowedKeyManagementString:Ljava/lang/String;
    .end local v4           #allowedPairwiseCiphersString:Ljava/lang/String;
    .end local v5           #allowedProtocolsString:Ljava/lang/String;
    .end local v6           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v8           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v13           #value:Ljava/lang/String;
    .end local v14           #varName:Ljava/lang/String;
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 574
    .restart local v1       #allowedAuthAlgorithmsString:Ljava/lang/String;
    .restart local v2       #allowedGroupCiphersString:Ljava/lang/String;
    .restart local v3       #allowedKeyManagementString:Ljava/lang/String;
    .restart local v4       #allowedPairwiseCiphersString:Ljava/lang/String;
    .restart local v5       #allowedProtocolsString:Ljava/lang/String;
    .restart local v6       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v8       #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v9       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #oriValue:Ljava/lang/String;
    .restart local v13       #value:Ljava/lang/String;
    .restart local v14       #varName:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_11

    .line 575
    invoke-virtual {v15, v13}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPhase2(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_3

    .line 577
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_12

    .line 578
    invoke-virtual {v15, v13}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setIdentity(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_3

    .line 580
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_13

    .line 581
    invoke-virtual {v15, v13}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setAnonymousIdentity(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_3

    .line 583
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_14

    .line 584
    invoke-virtual {v15, v13}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPassword(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_3

    .line 586
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_15

    .line 587
    invoke-virtual {v15, v13}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setClientCert(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 590
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/miui/milk/control/cloud/WifiCloudController;->readLinuxFile(Ljava/lang/String;)[B

    move-result-object v7

    .line 591
    .local v7, content:[B
    if-eqz v7, :cond_e

    .line 592
    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setClientCertFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_3

    .line 596
    .end local v7           #content:[B
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_16

    .line 597
    invoke-virtual {v15, v13}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPrivateKey(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 600
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/miui/milk/control/cloud/WifiCloudController;->readLinuxFile(Ljava/lang/String;)[B

    move-result-object v7

    .line 601
    .restart local v7       #content:[B
    if-eqz v7, :cond_e

    .line 602
    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPrivateKeyFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto :goto_3

    .line 606
    .end local v7           #content:[B
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_e

    .line 607
    invoke-virtual {v15, v13}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setCaCert(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 610
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/miui/milk/control/cloud/WifiCloudController;->readLinuxFile(Ljava/lang/String;)[B

    move-result-object v7

    .line 611
    .restart local v7       #content:[B
    if-eqz v7, :cond_e

    .line 612
    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setCaCertFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto/16 :goto_3

    .line 617
    .end local v7           #content:[B
    .end local v8           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v12           #oriValue:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    .end local v14           #varName:Ljava/lang/String;
    :cond_17
    invoke-virtual {v15}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->build()Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v16

    return-object v16
.end method

.method private readLinuxFile(Ljava/lang/String;)[B
    .locals 14
    .parameter "filepath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 621
    if-nez p1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-object v4

    .line 624
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 625
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 628
    const/16 v11, 0x2f

    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 629
    .local v6, filename:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 633
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-direct {v10, v11, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 636
    .local v10, tmpFile:Ljava/io/File;
    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/String;

    .line 637
    .local v3, cmd:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cp "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v13

    .line 638
    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "chmod 777 \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    .line 639
    invoke-static {v3}, Lcom/miui/backup/SysUtils;->runExecSh([Ljava/lang/String;)Z

    .line 642
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 643
    const-wide/16 v11, 0x1f4

    :try_start_1
    invoke-virtual {p0, v11, v12}, Ljava/lang/Object;->wait(J)V

    .line 644
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 650
    :goto_1
    const/4 v4, 0x0

    .line 651
    .local v4, content:[B
    if-eqz v10, :cond_6

    .line 652
    const/4 v7, 0x0

    .line 653
    .local v7, input:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 655
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 656
    .end local v7           #input:Ljava/io/FileInputStream;
    .local v8, input:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x200

    invoke-direct {v1, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 657
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x200

    :try_start_4
    new-array v2, v11, [B

    .line 658
    .local v2, buf:[B
    const/4 v9, 0x0

    .line 659
    .local v9, n:I
    :goto_2
    invoke-virtual {v8, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-ltz v9, :cond_4

    .line 660
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_2

    .line 666
    .end local v2           #buf:[B
    .end local v9           #n:I
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .line 667
    .end local v8           #input:Ljava/io/FileInputStream;
    .local v5, e:Ljava/io/FileNotFoundException;
    .restart local v7       #input:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v11, "WifiCloudController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot access to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    const/4 v4, 0x0

    .line 669
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 675
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v7, :cond_2

    .line 677
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 681
    :cond_2
    :goto_5
    if-eqz v0, :cond_3

    .line 683
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 686
    :cond_3
    :goto_6
    throw v11

    .line 644
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v4           #content:[B
    .end local v7           #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v11
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    .line 645
    :catch_1
    move-exception v11

    goto :goto_1

    .line 662
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v4       #content:[B
    .restart local v8       #input:Ljava/io/FileInputStream;
    .restart local v9       #n:I
    :cond_4
    const/4 v2, 0x0

    .line 664
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    move-result-object v4

    .line 675
    if-eqz v8, :cond_5

    .line 677
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 681
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    .line 683
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 691
    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buf:[B
    .end local v8           #input:Ljava/io/FileInputStream;
    .end local v9           #n:I
    :cond_6
    :goto_8
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 692
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 670
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    .line 671
    .local v5, e:Ljava/io/IOException;
    :goto_9
    :try_start_d
    const-string v11, "WifiCloudController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot access to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    const/4 v4, 0x0

    .line 673
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 678
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v8       #input:Ljava/io/FileInputStream;
    .restart local v9       #n:I
    :catch_3
    move-exception v11

    goto :goto_7

    .line 684
    :catch_4
    move-exception v11

    goto :goto_8

    .line 678
    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buf:[B
    .end local v8           #input:Ljava/io/FileInputStream;
    .end local v9           #n:I
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    :catch_5
    move-exception v12

    goto :goto_5

    .line 684
    :catch_6
    move-exception v12

    goto :goto_6

    .line 675
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v11

    move-object v0, v1

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto :goto_4

    .line 670
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catch_8
    move-exception v5

    move-object v0, v1

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bout:Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto :goto_9

    .line 666
    :catch_9
    move-exception v5

    goto :goto_3

    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v8       #input:Ljava/io/FileInputStream;
    :catch_a
    move-exception v5

    move-object v7, v8

    .end local v8           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private readWifiConfiguration(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 763
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 764
    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 765
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 767
    const-string v0, "WifiCloudController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ssid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getBssid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 771
    const-string v0, "WifiCloudController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bssid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPriority()I

    move-result v0

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 774
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getScanSsid()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 778
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepTxKeyIndex()I

    move-result v0

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 779
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 780
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey0()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 781
    const-string v0, "WifiCloudController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wep_key0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 784
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey1()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 785
    const-string v0, "WifiCloudController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wep_key1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 788
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey2()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 789
    const-string v0, "WifiCloudController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wep_key2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 792
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey3()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    .line 793
    const-string v0, "WifiCloudController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wep_key3 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPsk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 796
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPsk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 797
    const-string v0, "WifiCloudController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "psk : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getProto()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 803
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 804
    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_9

    aget-object v6, v3, v0

    .line 805
    sget-object v7, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/miui/milk/control/cloud/WifiCloudController;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 807
    if-ltz v6, :cond_7

    .line 808
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    .line 804
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v2

    .line 774
    goto/16 :goto_0

    .line 813
    :cond_9
    const-string v0, "WifiCloudController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyMgmt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getKeyMgmt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getKeyMgmt()Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 816
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 817
    array-length v4, v3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_b

    aget-object v6, v3, v0

    .line 818
    sget-object v7, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/miui/milk/control/cloud/WifiCloudController;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 820
    if-ltz v6, :cond_a

    .line 821
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    .line 817
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 826
    :cond_b
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getAuthAlg()Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 828
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 829
    array-length v4, v3

    move v0, v2

    :goto_3
    if-ge v0, v4, :cond_d

    aget-object v6, v3, v0

    .line 830
    sget-object v7, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/miui/milk/control/cloud/WifiCloudController;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 832
    if-ltz v6, :cond_c

    .line 833
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    .line 829
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 838
    :cond_d
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPairwise()Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 840
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 841
    array-length v4, v3

    move v0, v2

    :goto_4
    if-ge v0, v4, :cond_f

    aget-object v6, v3, v0

    .line 842
    sget-object v7, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/miui/milk/control/cloud/WifiCloudController;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 843
    if-ltz v6, :cond_e

    .line 844
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    .line 841
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 849
    :cond_f
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 851
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 852
    array-length v6, v4

    move v3, v2

    :goto_5
    if-ge v3, v6, :cond_11

    aget-object v7, v4, v3

    .line 853
    sget-object v8, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/miui/milk/control/cloud/WifiCloudController;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 854
    if-ltz v7, :cond_10

    .line 855
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    .line 852
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 861
    :cond_11
    iget-object v4, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v6, v4

    move v3, v2

    :goto_6
    if-ge v3, v6, :cond_1b

    aget-object v7, v4, v3

    .line 862
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v7, v8, :cond_14

    .line 863
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getEap()Ljava/lang/String;

    move-result-object v0

    .line 887
    :cond_12
    :goto_7
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v7, v8, :cond_13

    .line 888
    invoke-static {v0}, Lcom/miui/milk/control/cloud/WifiCloudController;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    :cond_13
    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 861
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 865
    :cond_14
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v7, v8, :cond_15

    .line 866
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPhase2()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 868
    :cond_15
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v7, v8, :cond_16

    .line 869
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getIdentity()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 871
    :cond_16
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v7, v8, :cond_17

    .line 872
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 874
    :cond_17
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v7, v8, :cond_18

    .line 875
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 877
    :cond_18
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v7, v8, :cond_19

    .line 878
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCert()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 880
    :cond_19
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v7, v8, :cond_1a

    .line 881
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 883
    :cond_1a
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-ne v7, v8, :cond_12

    .line 884
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCert()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 893
    :cond_1b
    iget-object v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 895
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 896
    iget-object v3, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_1d

    iget-object v3, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    iget-object v3, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1c

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 897
    :cond_1e
    iget-object v3, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v3, :cond_1f

    iget-object v3, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    iget-object v3, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-nez v3, :cond_1c

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 898
    :cond_20
    iget-object v3, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->size()I

    move-result v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->size()I

    move-result v4

    if-ne v3, v4, :cond_1c

    move v3, v2

    move v4, v1

    .line 900
    :goto_8
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->size()I

    move-result v7

    if-ge v3, v7, :cond_22

    .line 901
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eq v7, v8, :cond_21

    move v4, v2

    .line 900
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 905
    :cond_22
    if-eqz v4, :cond_1c

    .line 906
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 914
    :cond_23
    const-string v0, "WifiCloudController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-object v5
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/4 v0, 0x0

    .line 956
    if-nez p0, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-object v0

    .line 957
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 958
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveWifiPerBatch(Ljava/util/List;Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    .locals 18
    .parameter
    .parameter "callback"
    .parameter "start"
    .parameter "totalCount"
    .parameter "sharedPref"
    .parameter "batchCount"
    .parameter "totalTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Lcom/miui/milk/control/callback/AsyncTaskCallback;",
            "II",
            "Landroid/content/SharedPreferences;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    .local p1, wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 300
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi;->newBuilder()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v11

    .line 301
    .local v11, wifi:Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    const/4 v13, 0x0

    .line 304
    .local v13, wifiCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_2

    .line 305
    move/from16 v0, p3

    if-lt v3, v0, :cond_1

    move/from16 v0, p3

    add-int/lit16 v14, v0, 0xfa

    if-ge v3, v14, :cond_1

    .line 306
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 307
    .local v4, networkConf:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/milk/control/cloud/WifiCloudController;->prepareWifiConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v12

    .line 308
    .local v12, wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    invoke-virtual {v12}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->toBuilder()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v14

    sget-object v15, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v14, v15}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->build()Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v12

    .line 309
    invoke-virtual {v11, v12}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->addWifiConfig(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    .line 310
    add-int/lit8 v13, v13, 0x1

    .line 311
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    add-int v17, p3, v13

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    mul-int/lit8 v16, p6, 0xa

    add-int v16, v16, p3

    add-int v16, v16, v13

    mul-int/lit8 v16, v16, 0x64

    div-int v16, v16, p7

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "100"

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_1

    .line 316
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v4           #networkConf:Landroid/net/wifi/WifiConfiguration;
    .end local v12           #wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    :cond_0
    :goto_1
    return-void

    .line 304
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 321
    :catch_0
    move-exception v2

    .line 322
    .local v2, e:Ljava/lang/Exception;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "EXCEPTION"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "2102"

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    goto :goto_1

    .line 326
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    const-string v14, "WifiCloudController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deviceId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v14, "WifiCloudController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IMSI : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v11}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->getWifiConfigList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_3

    .line 330
    const-string v14, "WifiCloudController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Export WifiConfig Counts : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 334
    :cond_3
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v8

    .line 335
    .local v8, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v8, v11}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setWifi(Lcom/miui/milk/model/WifiProtos$Wifi$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 338
    if-eqz v8, :cond_0

    .line 339
    const/4 v6, 0x0

    .line 341
    .local v6, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v5

    .line 343
    .local v5, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    add-int v17, p3, v13

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    mul-int/lit8 v16, p6, 0xa

    add-int v16, v16, p3

    add-int v16, v16, v13

    mul-int/lit8 v16, v16, 0x64

    div-int v16, v16, p7

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "100"

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_4

    .line 347
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 379
    .end local v5           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 380
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v14, "WifiCloudController"

    const-string v15, "Cannot send wifi "

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 382
    throw v2

    .line 351
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v5}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 352
    const-string v14, "WifiCloudController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Export WifiConfig Counts : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/milk/control/cloud/WifiCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 355
    if-eqz v6, :cond_6

    .line 357
    const-string v14, "M_WATERMARK"

    invoke-interface {v6, v14}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    .line 358
    .local v10, waterMarkHeader:Lorg/apache/http/Header;
    const/4 v9, 0x0

    .line 359
    .local v9, waterMark:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 360
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 363
    :cond_5
    if-eqz v9, :cond_6

    .line 364
    invoke-interface/range {p5 .. p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 365
    .local v7, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v14, "watermark_wifi"

    invoke-interface {v7, v14, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    const-string v14, "WifiCloudController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get waterMark : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v7           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v9           #waterMark:Ljava/lang/String;
    .end local v10           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_6
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    add-int v17, p3, v13

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    mul-int/lit8 v16, p6, 0xa

    add-int v16, v16, p3

    add-int v16, v16, v13

    add-int/lit8 v16, v16, 0xa

    mul-int/lit8 v16, v16, 0x64

    div-int v16, v16, p7

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "100"

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_0

    .line 376
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method private waitWifiEnabled()V
    .locals 3

    .prologue
    .line 47
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 51
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 52
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    :catch_0
    move-exception v0

    .line 57
    :cond_0
    return-void
.end method

.method private writeLinuxFile(Ljava/lang/String;[B)V
    .locals 9
    .parameter "filepath"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 699
    if-nez p1, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 703
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 706
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 711
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 712
    .local v5, tmpFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 713
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 716
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_1
    if-eqz p2, :cond_3

    .line 721
    const/4 v3, 0x0

    .line 723
    .local v3, output:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 724
    .end local v3           #output:Ljava/io/FileOutputStream;
    .local v4, output:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 725
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 733
    if-eqz v4, :cond_3

    .line 735
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 743
    .end local v4           #output:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    .line 744
    .local v0, cmd:[Ljava/lang/String;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 745
    invoke-static {v0}, Lcom/miui/backup/SysUtils;->runExecSh([Ljava/lang/String;)Z

    .line 748
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 749
    const-wide/16 v6, 0x1f4

    :try_start_5
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 750
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 756
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 757
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 717
    .end local v0           #cmd:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 718
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 726
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 727
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    const-string v6, "WifiCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot access to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 733
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_4

    .line 735
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 737
    :cond_4
    :goto_6
    throw v6

    .line 729
    :catch_2
    move-exception v1

    .line 730
    .local v1, e:Ljava/io/IOException;
    :goto_7
    :try_start_8
    const-string v6, "WifiCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot access to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 750
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v0       #cmd:[Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v6
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3

    .line 751
    :catch_3
    move-exception v6

    goto :goto_3

    .line 736
    .end local v0           #cmd:[Ljava/lang/String;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    goto/16 :goto_2

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v7

    goto :goto_6

    .line 733
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 729
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 726
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    goto :goto_4
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 66
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearPrepared()V
    .locals 0

    .prologue
    .line 971
    return-void
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 24
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 389
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z

    .line 391
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/WifiCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->waitWifiEnabled()V

    .line 398
    const-string v20, "WifiCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deviceId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v20, "WifiCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IMSI : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v9, 0x0

    .line 402
    .local v9, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v8

    .line 404
    .local v8, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v12

    .line 405
    .local v12, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi;->newBuilder()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->build()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setWifi(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/WifiCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v12}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v8}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 408
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/miui/milk/control/cloud/WifiCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 409
    if-eqz v9, :cond_2

    .line 411
    const-string v20, "M_WATERMARK"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v15

    .line 412
    .local v15, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v16, 0x0

    .line 413
    .local v16, waterMarkNew:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 414
    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 417
    :cond_0
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 418
    .local v6, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v13

    .line 420
    .local v13, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v13}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getWifi()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v17

    .line 421
    .local v17, wifi:Lcom/miui/milk/model/WifiProtos$Wifi;
    if-eqz v17, :cond_a

    .line 422
    const/16 v19, 0x0

    .line 423
    .local v19, wifiCount:I
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/WifiProtos$Wifi;->getWifiConfigCount()I

    move-result v14

    .line 424
    .local v14, totalCount:I
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/WifiProtos$Wifi;->getWifiConfigList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/milk/model/WifiProtos$WifiConfig;

    .line 426
    .local v18, wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/milk/control/cloud/WifiCloudController;->readWifiConfiguration(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 427
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v10, -0x1

    .line 428
    .local v10, ret:I
    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    if-gez v20, :cond_3

    .line 429
    const-string v20, "WifiCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "add network : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    .line 436
    :goto_0
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_4

    .line 438
    new-instance v20, Ljava/lang/Exception;

    const-string v21, "WifiManager Error: addNetwork return -1"

    invoke-direct/range {v20 .. v21}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 484
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #ret:I
    .end local v12           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v13           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v14           #totalCount:I
    .end local v15           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v16           #waterMarkNew:Ljava/lang/String;
    .end local v17           #wifi:Lcom/miui/milk/model/WifiProtos$Wifi;
    .end local v18           #wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    .end local v19           #wifiCount:I
    :catch_0
    move-exception v4

    .line 485
    .local v4, e:Ljava/lang/Exception;
    const-string v20, "WifiCloudController"

    const-string v21, "Cannot read wifi "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/miui/milk/control/cloud/WifiCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 488
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    return-void

    .line 392
    :catch_1
    move-exception v5

    .line 393
    .local v5, e1:Ljava/lang/Exception;
    goto :goto_1

    .line 432
    .end local v5           #e1:Ljava/lang/Exception;
    .restart local v3       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    .restart local v10       #ret:I
    .restart local v12       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v13       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v14       #totalCount:I
    .restart local v15       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v16       #waterMarkNew:Ljava/lang/String;
    .restart local v17       #wifi:Lcom/miui/milk/model/WifiProtos$Wifi;
    .restart local v18       #wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    .restart local v19       #wifiCount:I
    :cond_3
    :try_start_2
    const-string v20, "WifiCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "update network : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    goto :goto_0

    .line 441
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCertFile()Lcom/google/protobuf/ByteString;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 442
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCert()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCertFile()Lcom/google/protobuf/ByteString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/WifiCloudController;->writeLinuxFile(Ljava/lang/String;[B)V

    .line 445
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKeyFile()Lcom/google/protobuf/ByteString;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 446
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKeyFile()Lcom/google/protobuf/ByteString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/WifiCloudController;->writeLinuxFile(Ljava/lang/String;[B)V

    .line 449
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCertFile()Lcom/google/protobuf/ByteString;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 450
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCert()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCertFile()Lcom/google/protobuf/ByteString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/WifiCloudController;->writeLinuxFile(Ljava/lang/String;[B)V

    .line 452
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/WifiCloudController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 456
    add-int/lit8 v19, v19, 0x1

    .line 457
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    mul-int/lit8 v22, v19, 0x64

    div-int v22, v22, v14

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_1

    .line 461
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 465
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v10           #ret:I
    .end local v18           #wifiConfig:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    :cond_8
    const-string v20, "WifiCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Import WifiConfig Counts : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x64

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_9

    .line 467
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 470
    :cond_9
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "SUCCESS"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_a

    .line 471
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 476
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v14           #totalCount:I
    .end local v19           #wifiCount:I
    :cond_a
    if-eqz v16, :cond_2

    .line 477
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 478
    .local v11, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "restore_watermark_wifi"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 480
    const-string v20, "WifiCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "new waterMark : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 11
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/WifiCloudController;->fulfillWifiPassword(Lcom/miui/milk/control/callback/AsyncTaskCallback;)Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, wifiNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 81
    .local v4, totalCount:I
    div-int/lit16 v8, v4, 0xfa

    .line 82
    .local v8, batches:I
    mul-int/lit16 v0, v8, 0xfa

    if-le v4, v0, :cond_2

    .line 83
    add-int/lit8 v8, v8, 0x1

    .line 86
    :cond_2
    mul-int/lit8 v0, v8, 0xa

    add-int v7, v4, v0

    .line 87
    .local v7, totalTime:I
    const/4 v6, 0x0

    .line 89
    .local v6, batchCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    .line 92
    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/control/cloud/WifiCloudController;->saveWifiPerBatch(Ljava/util/List;Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    add-int/lit16 v3, v3, 0xfa

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 93
    :catch_0
    move-exception v9

    .line 94
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WifiCloudController"

    const-string v2, "Cannot save wifi batch "

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const/4 v2, 0x1

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const/4 v2, 0x2

    const-string v5, "100"

    aput-object v5, v0, v2

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z

    goto :goto_0

    .line 105
    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "SUCCESS"

    aput-object v5, v0, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const/4 v2, 0x2

    const-string v5, "0"

    aput-object v5, v0, v2

    const/4 v2, 0x3

    const-string v5, "0"

    aput-object v5, v0, v2

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController;->mCanceled:Z

    goto/16 :goto_0
.end method
