.class public final Lcom/android/monitor/net/Firewall;
.super Ljava/lang/Object;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/monitor/net/Firewall$ScriptRunner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    return-void
.end method

.method private static alert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    const-class v1, Lcom/android/monitor/ApplyRulesAlertActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static applyRules(Landroid/content/Context;Landroid/util/SparseArray;Z)Z
    .locals 1
    .parameter "context"
    .parameter
    .parameter "showErrors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, uidInfos:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/net/UidInfo;>;"
    invoke-static {p0, p1}, Lcom/android/monitor/net/Firewall;->saveRules(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 241
    invoke-static {p0, p2}, Lcom/android/monitor/net/Firewall;->applySavedRules(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static applyRulesImpl(Landroid/content/Context;[I[IZZ)Z
    .locals 23
    .parameter "context"
    .parameter "wifiUids"
    .parameter "mobileUids"
    .parameter "whitelist"
    .parameter "showErrors"

    .prologue
    .line 94
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v4, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "tiwlan+"

    aput-object v22, v4, v21

    const/16 v21, 0x1

    const-string v22, "wlan+"

    aput-object v22, v4, v21

    const/16 v21, 0x2

    const-string v22, "eth+"

    aput-object v22, v4, v21

    .line 95
    .local v4, ITFS_WIFI:[Ljava/lang/String;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v3, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "rmnet+"

    aput-object v22, v3, v21

    const/16 v21, 0x1

    const-string v22, "pdp+"

    aput-object v22, v3, v21

    const/16 v21, 0x2

    const-string v22, "ppp+"

    aput-object v22, v3, v21

    const/16 v21, 0x3

    const-string v22, "uwbr+"

    aput-object v22, v3, v21

    .line 96
    .local v3, ITFS_3G:[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 97
    .local v16, prefs:Landroid/content/SharedPreferences;
    if-nez p3, :cond_0

    const/4 v8, 0x1

    .line 98
    .local v8, blacklist:Z
    :goto_0
    const-string v21, "LogEnabled"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 99
    .local v14, logenabled:Z
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_1

    const/16 v21, 0x0

    aget v21, p2, v21

    const/16 v22, -0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/4 v5, 0x1

    .line 100
    .local v5, anyMobile:Z
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_2

    const/16 v21, 0x0

    aget v21, p1, v21

    const/16 v22, -0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    .line 102
    .local v6, anyWifi:Z
    :goto_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v18, script:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/monitor/net/Firewall;->scriptHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v21, "$IPTABLES --version || exit 1\n# Create the droidwall chains if necessary\n$IPTABLES -L droidwall >/dev/null 2>/dev/null || $IPTABLES --new droidwall || exit 2\n$IPTABLES -L droidwall-3g >/dev/null 2>/dev/null || $IPTABLES --new droidwall-3g || exit 3\n$IPTABLES -L droidwall-wifi >/dev/null 2>/dev/null || $IPTABLES --new droidwall-wifi || exit 4\n$IPTABLES -L droidwall-reject >/dev/null 2>/dev/null || $IPTABLES --new droidwall-reject || exit 5\n# Add droidwall chain to OUTPUT chain if necessary\n$IPTABLES -L OUTPUT | $GREP -q droidwall || $IPTABLES -A OUTPUT -j droidwall || exit 6\n# Add droidwall chain to penalty_box chain if necessary\n$IPTABLES -L penalty_box | $GREP -q droidwall || $IPTABLES -A penalty_box -j droidwall || exit 6\n# Flush existing rules\n$IPTABLES -F droidwall || exit 7\n$IPTABLES -F droidwall-3g || exit 8\n$IPTABLES -F droidwall-wifi || exit 9\n$IPTABLES -F droidwall-reject || exit 10\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    if-eqz v14, :cond_3

    .line 125
    const-string v21, "# Create the log and reject rules (ignore errors on the LOG target just in case it is not available)\n$IPTABLES -A droidwall-reject -j LOG --log-prefix \"[DROIDWALL] \" --log-uid\n$IPTABLES -A droidwall-reject -j REJECT || exit 11\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :goto_3
    const-string v21, "# Main rules (per interface)\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    move-object v7, v3

    .local v7, arr$:[Ljava/lang/String;
    array-length v13, v7

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_4
    if-ge v11, v13, :cond_5

    aget-object v12, v7, v11

    .line 139
    .local v12, itf:Ljava/lang/String;
    const-string v21, "$IPTABLES -A droidwall -o "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " -j droidwall-3g || exit\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 97
    .end local v5           #anyMobile:Z
    .end local v6           #anyWifi:Z
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #blacklist:Z
    .end local v11           #i$:I
    .end local v12           #itf:Ljava/lang/String;
    .end local v13           #len$:I
    .end local v14           #logenabled:Z
    .end local v18           #script:Ljava/lang/StringBuilder;
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 99
    .restart local v8       #blacklist:Z
    .restart local v14       #logenabled:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 100
    .restart local v5       #anyMobile:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 131
    .restart local v6       #anyWifi:Z
    .restart local v18       #script:Ljava/lang/StringBuilder;
    :cond_3
    const-string v21, "# Create the reject rule (log disabled)\n$IPTABLES -A droidwall-reject -j REJECT || exit 11\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 206
    :catch_0
    move-exception v10

    .line 207
    .local v10, e:Ljava/lang/Exception;
    if-eqz p4, :cond_4

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "error refreshing iptables: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/monitor/net/Firewall;->alert(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    .end local v10           #e:Ljava/lang/Exception;
    :cond_4
    :goto_5
    const/16 v21, 0x0

    :goto_6
    return v21

    .line 141
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    :cond_5
    move-object v7, v4

    :try_start_1
    array-length v13, v7

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v13, :cond_6

    aget-object v12, v7, v11

    .line 142
    .restart local v12       #itf:Ljava/lang/String;
    const-string v21, "$IPTABLES -A droidwall -o "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " -j droidwall-wifi || exit\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 145
    .end local v12           #itf:Ljava/lang/String;
    :cond_6
    const-string v21, "# Filtering rules\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    if-eqz p3, :cond_e

    const-string v19, "RETURN"

    .line 148
    .local v19, targetRule:Ljava/lang/String;
    :goto_8
    if-eqz p3, :cond_8

    if-nez v6, :cond_8

    .line 150
    const-string v21, "dhcp"

    invoke-static/range {v21 .. v21}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v20

    .line 151
    .local v20, uid:I
    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 152
    const-string v21, "# dhcp user\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v21, "$IPTABLES -A droidwall-wifi -m owner --uid-owner "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " -j RETURN || exit\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_7
    const-string v21, "wifi"

    invoke-static/range {v21 .. v21}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v20

    .line 156
    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 157
    const-string v21, "# wifi user\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v21, "$IPTABLES -A droidwall-wifi -m owner --uid-owner "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " -j RETURN || exit\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .end local v20           #uid:I
    :cond_8
    if-eqz v5, :cond_f

    .line 164
    if-eqz v8, :cond_9

    .line 166
    const-string v21, "$IPTABLES -A droidwall-3g -j "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " || exit\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .end local v7           #arr$:[Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_10

    .line 175
    if-eqz v8, :cond_a

    .line 177
    const-string v21, "$IPTABLES -A droidwall-wifi -j "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " || exit\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_a
    if-eqz p3, :cond_c

    .line 186
    if-nez v5, :cond_b

    .line 187
    const-string v21, "$IPTABLES -A droidwall-3g -j droidwall-reject || exit\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_b
    if-nez v6, :cond_c

    .line 190
    const-string v21, "$IPTABLES -A droidwall-wifi -j droidwall-reject || exit\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v17, res:Ljava/lang/StringBuilder;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/monitor/net/Firewall;->runScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v9

    .line 195
    .local v9, code:I
    if-eqz p4, :cond_11

    if-eqz v9, :cond_11

    .line 196
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 197
    .local v15, msg:Ljava/lang/String;
    const-string v21, "DroidWall"

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v21, "\nTry `iptables -h\' or \'iptables --help\' for more information."

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 200
    const-string v21, "\nTry `iptables -h\' or \'iptables --help\' for more information."

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 202
    :cond_d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error applying iptables rules. Exit code: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/monitor/net/Firewall;->alert(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 146
    .end local v9           #code:I
    .end local v15           #msg:Ljava/lang/String;
    .end local v17           #res:Ljava/lang/StringBuilder;
    .end local v19           #targetRule:Ljava/lang/String;
    .restart local v7       #arr$:[Ljava/lang/String;
    :cond_e
    const-string v19, "droidwall-reject"

    goto/16 :goto_8

    .line 170
    .restart local v19       #targetRule:Ljava/lang/String;
    :cond_f
    move-object/from16 v7, p2

    .local v7, arr$:[I
    array-length v13, v7

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v13, :cond_9

    aget v20, v7, v11

    .line 171
    .restart local v20       #uid:I
    const-string v21, "$IPTABLES -A droidwall-3g -m owner --uid-owner "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " -j "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " || exit\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 181
    .end local v7           #arr$:[I
    .end local v20           #uid:I
    :cond_10
    move-object/from16 v7, p1

    .restart local v7       #arr$:[I
    array-length v13, v7

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v13, :cond_a

    aget v20, v7, v11

    .line 182
    .restart local v20       #uid:I
    const-string v21, "$IPTABLES -A droidwall-wifi -m owner --uid-owner "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " -j "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " || exit\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 204
    .end local v7           #arr$:[I
    .end local v20           #uid:I
    .restart local v9       #code:I
    .restart local v17       #res:Ljava/lang/StringBuilder;
    :cond_11
    const/16 v21, 0x1

    goto/16 :goto_6
.end method

.method public static applySavedRules(Landroid/content/Context;Z)Z
    .locals 10
    .parameter "context"
    .parameter "showErrors"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 220
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 221
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v8, "WifiAllowedUids"

    const-string v9, ""

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, wifiAllowedUids:Ljava/lang/String;
    const-string v8, "WifiForbiddenUids"

    const-string v9, ""

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, wifiForbiddenUids:Ljava/lang/String;
    const-string v8, "MobileAllowedUids"

    const-string v9, ""

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, mobileAllowedUids:Ljava/lang/String;
    const-string v8, "MobileForbiddenUids"

    const-string v9, ""

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, mobileForbiddenUids:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/monitor/net/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v8

    invoke-static {v0}, Lcom/android/monitor/net/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v9

    invoke-static {p0, v8, v9, v6, p1}, Lcom/android/monitor/net/Firewall;->applyRulesImpl(Landroid/content/Context;[I[IZZ)Z

    move-result v3

    .line 228
    .local v3, result:Z
    if-eqz v3, :cond_0

    invoke-static {v5}, Lcom/android/monitor/net/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v8

    invoke-static {v1}, Lcom/android/monitor/net/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v9

    invoke-static {p0, v8, v9, v7, p1}, Lcom/android/monitor/net/Firewall;->applyRulesImpl(Landroid/content/Context;[I[IZZ)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public static getAccessMode(Landroid/content/Context;Z)I
    .locals 1
    .parameter "context"
    .parameter "isMobile"

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, mode:I
    if-eqz p1, :cond_0

    .line 418
    invoke-static {p0}, Lcom/android/monitor/net/Firewall;->getMobileAccessMode(Landroid/content/Context;)I

    move-result v0

    .line 422
    :goto_0
    return v0

    .line 420
    :cond_0
    invoke-static {p0}, Lcom/android/monitor/net/Firewall;->getWifiAccessMode(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private static getMobileAccessMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 411
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "MobileAccessMode"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getWifiAccessMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 445
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 446
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "WifiAccessMode"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 466
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static loadRules(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, uidInfos:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/net/UidInfo;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 307
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 308
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v8, "WifiAllowedUids"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 309
    .local v6, wifiAllowedUids:Ljava/lang/String;
    const-string v8, "MobileAllowedUids"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, mobileAllowedUids:Ljava/lang/String;
    const-string v8, "WifiForbiddenUids"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, wifiForbiddenUids:Ljava/lang/String;
    const-string v8, "MobileForbiddenUids"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, mobileForbiddenUids:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/monitor/net/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v5

    .line 314
    .local v5, uids:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v8, v5

    if-ge v0, v8, :cond_1

    .line 315
    aget v8, v5, v0

    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/net/UidInfo;

    .line 316
    .local v4, u:Lcom/android/monitor/net/UidInfo;
    if-eqz v4, :cond_0

    .line 317
    iput-boolean v11, v4, Lcom/android/monitor/net/UidInfo;->mEnableWifi:Z

    .line 314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v4           #u:Lcom/android/monitor/net/UidInfo;
    :cond_1
    invoke-static {v7}, Lcom/android/monitor/net/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v5

    .line 321
    const/4 v0, 0x0

    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_3

    .line 322
    aget v8, v5, v0

    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/net/UidInfo;

    .line 323
    .restart local v4       #u:Lcom/android/monitor/net/UidInfo;
    if-eqz v4, :cond_2

    .line 324
    iput-boolean v10, v4, Lcom/android/monitor/net/UidInfo;->mEnableWifi:Z

    .line 321
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 327
    .end local v4           #u:Lcom/android/monitor/net/UidInfo;
    :cond_3
    invoke-static {v1}, Lcom/android/monitor/net/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v5

    .line 328
    const/4 v0, 0x0

    :goto_2
    array-length v8, v5

    if-ge v0, v8, :cond_5

    .line 329
    aget v8, v5, v0

    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/net/UidInfo;

    .line 330
    .restart local v4       #u:Lcom/android/monitor/net/UidInfo;
    if-eqz v4, :cond_4

    .line 331
    iput-boolean v11, v4, Lcom/android/monitor/net/UidInfo;->mEnableMobile:Z

    .line 328
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 334
    .end local v4           #u:Lcom/android/monitor/net/UidInfo;
    :cond_5
    invoke-static {v2}, Lcom/android/monitor/net/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v5

    .line 335
    const/4 v0, 0x0

    :goto_3
    array-length v8, v5

    if-ge v0, v8, :cond_7

    .line 336
    aget v8, v5, v0

    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/net/UidInfo;

    .line 337
    .restart local v4       #u:Lcom/android/monitor/net/UidInfo;
    if-eqz v4, :cond_6

    .line 338
    iput-boolean v10, v4, Lcom/android/monitor/net/UidInfo;->mEnableMobile:Z

    .line 335
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 340
    .end local v4           #u:Lcom/android/monitor/net/UidInfo;
    :cond_7
    return-void
.end method

.method private static parseUidsString(Ljava/lang/String;)[I
    .locals 6
    .parameter "str"

    .prologue
    .line 560
    const/4 v5, 0x0

    new-array v4, v5, [I

    .line 561
    .local v4, uids:[I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 562
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v2, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .local v2, tok:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v4, v5, [I

    .line 564
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 565
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, uid:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 568
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, ex:Ljava/lang/Exception;
    const/4 v5, -0x1

    aput v5, v4, v1

    goto :goto_1

    .line 576
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #i:I
    .end local v2           #tok:Ljava/util/StringTokenizer;
    .end local v3           #uid:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static purgeIptables(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "showErrors"

    .prologue
    const/4 v3, 0x0

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v2, res:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/monitor/net/Firewall;->scriptHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$IPTABLES -F droidwall\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$IPTABLES -F droidwall-reject\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$IPTABLES -F droidwall-3g\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$IPTABLES -F droidwall-wifi\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/android/monitor/net/Firewall;->runScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v0

    .line 357
    .local v0, code:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 358
    if-eqz p1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error purging iptables. exit code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/monitor/net/Firewall;->alert(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0           #code:I
    :cond_0
    :goto_0
    return v3

    .line 361
    .restart local v0       #code:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 362
    .end local v0           #code:I
    :catch_0
    move-exception v1

    .line 363
    .local v1, e:Ljava/lang/Exception;
    if-eqz p1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error purging iptables: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/monitor/net/Firewall;->alert(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static runScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 2
    .parameter "context"
    .parameter "script"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    const-wide/32 v0, 0x9c40

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/monitor/net/Firewall;->runScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;J)I

    move-result v0

    return v0
.end method

.method public static runScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;J)I
    .locals 4
    .parameter "context"
    .parameter "script"
    .parameter "res"
    .parameter "timeout"

    .prologue
    .line 377
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "firewall.sh"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 378
    .local v0, file:Ljava/io/File;
    new-instance v1, Lcom/android/monitor/net/Firewall$ScriptRunner;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/monitor/net/Firewall$ScriptRunner;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 379
    .local v1, runner:Lcom/android/monitor/net/Firewall$ScriptRunner;
    invoke-virtual {v1}, Lcom/android/monitor/net/Firewall$ScriptRunner;->start()V

    .line 381
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_1

    .line 382
    :try_start_0
    invoke-virtual {v1, p3, p4}, Lcom/android/monitor/net/Firewall$ScriptRunner;->join(J)V

    .line 386
    :goto_0
    invoke-virtual {v1}, Lcom/android/monitor/net/Firewall$ScriptRunner;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {v1}, Lcom/android/monitor/net/Firewall$ScriptRunner;->interrupt()V

    .line 389
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/android/monitor/net/Firewall$ScriptRunner;->join(J)V

    .line 390
    invoke-virtual {v1}, Lcom/android/monitor/net/Firewall$ScriptRunner;->destroy()V

    .line 391
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Lcom/android/monitor/net/Firewall$ScriptRunner;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_1
    iget v2, v1, Lcom/android/monitor/net/Firewall$ScriptRunner;->exitcode:I

    return v2

    .line 384
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/monitor/net/Firewall$ScriptRunner;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static saveRules(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, uidInfos:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/net/UidInfo;>;"
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 256
    .local v5, prefs:Landroid/content/SharedPreferences;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v9, wifiAllowedUids:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v10, wifiForbiddenUids:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v2, mobileAllowedUids:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v3, mobileForbiddenUids:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/android/monitor/net/Firewall;->getMobileAccessMode(Landroid/content/Context;)I

    move-result v4

    .line 262
    .local v4, mobileMode:I
    invoke-static {p0}, Lcom/android/monitor/net/Firewall;->getWifiAccessMode(Landroid/content/Context;)I

    move-result v11

    .line 264
    .local v11, wifiMode:I
    const/4 v12, 0x2

    if-ne v4, v12, :cond_4

    .line 265
    const/16 v12, -0xa

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    :cond_0
    :goto_0
    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 271
    const/16 v12, -0xa

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 278
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v6, :cond_a

    .line 279
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/monitor/net/UidInfo;

    .line 280
    .local v7, u:Lcom/android/monitor/net/UidInfo;
    iget v8, v7, Lcom/android/monitor/net/UidInfo;->mUid:I

    .line 281
    .local v8, uid:I
    iget-boolean v12, v7, Lcom/android/monitor/net/UidInfo;->mEnableWifi:Z

    if-eqz v12, :cond_6

    .line 282
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x7c

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    :cond_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    :goto_3
    iget-boolean v12, v7, Lcom/android/monitor/net/UidInfo;->mEnableMobile:Z

    if-eqz v12, :cond_8

    .line 289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x7c

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 266
    .end local v1           #i:I
    .end local v6           #size:I
    .end local v7           #u:Lcom/android/monitor/net/UidInfo;
    .end local v8           #uid:I
    :cond_4
    if-nez v4, :cond_0

    .line 267
    const/16 v12, -0xa

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :cond_5
    if-nez v4, :cond_1

    .line 273
    const/16 v12, -0xa

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 285
    .restart local v1       #i:I
    .restart local v6       #size:I
    .restart local v7       #u:Lcom/android/monitor/net/UidInfo;
    .restart local v8       #uid:I
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x7c

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    :cond_7
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 292
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x7c

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    :cond_9
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 298
    .end local v7           #u:Lcom/android/monitor/net/UidInfo;
    .end local v8           #uid:I
    :cond_a
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v12, "WifiAllowedUids"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    const-string v12, "WifiForbiddenUids"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    const-string v12, "MobileAllowedUids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    const-string v12, "MobileForbiddenUids"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    return-void
.end method

.method public static saveRules(Landroid/content/Context;Lcom/android/monitor/net/UidInfo;)V
    .locals 2
    .parameter "context"
    .parameter "uidInfo"

    .prologue
    .line 245
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 246
    .local v0, uidInfos:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/net/UidInfo;>;"
    iget v1, p1, Lcom/android/monitor/net/UidInfo;->mUid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    invoke-static {p0, v0}, Lcom/android/monitor/net/Firewall;->saveRules(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 248
    return-void
.end method

.method private static scriptHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const-string v0, "IPTABLES=iptables\nBUSYBOX=busybox\nGREP=grep\nECHO=echo\n# Try to find busybox\nif busybox --help >/dev/null 2>/dev/null ; then\n   BUSYBOX=busybox\nelif /system/xbin/busybox --help >/dev/null 2>/dev/null ; then\n   BUSYBOX=/system/xbin/busybox\nelif /system/bin/busybox --help >/dev/null 2>/dev/null ; then\n   BUSYBOX=/system/bin/busybox\nfi\n# Try to find grep\nif ! $ECHO 1 | $GREP -q 1 >/dev/null 2>/dev/null ; then\n   if $ECHO 1 | $BUSYBOX grep -q 1 >/dev/null 2>/dev/null ; then\n       GREP=\"$BUSYBOX grep\"\n   fi\n   # Grep is absolutely required\n   if ! $ECHO 1 | $GREP -q 1 >/dev/null 2>/dev/null ; then\n       $ECHO The grep command is required. DroidWall will not work.\n       exit 1\n   fi\nfi\n"

    return-object v0
.end method

.method public static setAccessMode(Landroid/content/Context;IZ)V
    .locals 0
    .parameter "context"
    .parameter "mode"
    .parameter "isMobile"

    .prologue
    .line 426
    if-eqz p2, :cond_0

    .line 427
    invoke-static {p0, p1}, Lcom/android/monitor/net/Firewall;->setMobileAccessMode(Landroid/content/Context;I)V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-static {p0, p1}, Lcom/android/monitor/net/Firewall;->setWifiAccessMode(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 475
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 476
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "Enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, p1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 480
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Enabled"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 481
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static setMobileAccessMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 434
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 435
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "MobileAccessMode"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 440
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "MobileAccessMode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static setWifiAccessMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 450
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 451
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "WifiAccessMode"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 458
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "WifiAccessMode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
