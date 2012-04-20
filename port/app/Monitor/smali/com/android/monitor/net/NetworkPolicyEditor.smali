.class public Lcom/android/monitor/net/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# instance fields
.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyService:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/INetworkPolicyManager;)V
    .locals 1
    .parameter "policyService"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    .line 57
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkPolicyManager;

    iput-object v0, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 58
    return-void
.end method

.method private static buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 10
    .parameter "template"

    .prologue
    const-wide/16 v3, -0x1

    .line 149
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 150
    .local v9, time:Landroid/text/format/Time;
    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    .line 151
    iget v2, v9, Landroid/text/format/Time;->monthDay:I

    .line 153
    .local v2, cycleDay:I
    new-instance v0, Landroid/net/NetworkPolicy;

    move-object v1, p0

    move-wide v5, v3

    move-wide v7, v3

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    return-object v0
.end method

.method private forceMobilePolicyCombined()Z
    .locals 6

    .prologue
    .line 203
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 204
    .local v4, subscriberIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 205
    .local v2, policy:Landroid/net/NetworkPolicy;
    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v2           #policy:Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v1, 0x0

    .line 209
    .local v1, modified:Z
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 210
    .local v3, subscriberId:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/monitor/net/NetworkPolicyEditor;->setMobilePolicySplitInternal(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_1

    .line 212
    .end local v3           #subscriberId:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private setMobilePolicySplitInternal(Ljava/lang/String;Z)Z
    .locals 21
    .parameter "subscriberId"
    .parameter "split"

    .prologue
    .line 247
    invoke-virtual/range {p0 .. p1}, Lcom/android/monitor/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v15

    .line 249
    .local v15, beforeSplit:Z
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 250
    .local v5, template3g:Landroid/net/NetworkTemplate;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v20

    .line 251
    .local v20, template4g:Landroid/net/NetworkTemplate;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 253
    .local v3, templateAll:Landroid/net/NetworkTemplate;
    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    .line 255
    const/4 v2, 0x0

    .line 283
    .end local v5           #template3g:Landroid/net/NetworkTemplate;
    :goto_0
    return v2

    .line 257
    .restart local v5       #template3g:Landroid/net/NetworkTemplate;
    :cond_0
    if-eqz v15, :cond_2

    if-nez p2, :cond_2

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/monitor/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v16

    .line 260
    .local v16, policy3g:Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/monitor/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v17

    .line 262
    .local v17, policy4g:Landroid/net/NetworkPolicy;
    invoke-virtual/range {v16 .. v17}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v2

    if-gez v2, :cond_1

    move-object/from16 v19, v16

    .line 264
    .local v19, restrictive:Landroid/net/NetworkPolicy;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v2, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v19

    iget-wide v5, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .end local v5           #template3g:Landroid/net/NetworkTemplate;
    move-object/from16 v0, v19

    iget-wide v7, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v9, -0x1

    invoke-direct/range {v2 .. v10}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const/4 v2, 0x1

    goto :goto_0

    .end local v19           #restrictive:Landroid/net/NetworkPolicy;
    .restart local v5       #template3g:Landroid/net/NetworkTemplate;
    :cond_1
    move-object/from16 v19, v17

    .line 262
    goto :goto_1

    .line 271
    .end local v16           #policy3g:Landroid/net/NetworkPolicy;
    .end local v17           #policy4g:Landroid/net/NetworkPolicy;
    :cond_2
    if-nez v15, :cond_3

    if-eqz p2, :cond_3

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/monitor/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 274
    .local v18, policyAll:Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v4, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v18

    iget v6, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v18

    iget-wide v7, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v18

    iget-wide v9, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v11, -0x1

    invoke-direct/range {v4 .. v12}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v6, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v18

    iget v8, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v18

    iget-wide v9, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v18

    iget-wide v11, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v13, -0x1

    move-object/from16 v7, v20

    invoke-direct/range {v6 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 283
    .end local v18           #policyAll:Landroid/net/NetworkPolicy;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .parameter "template"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/monitor/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 131
    .local v0, policy:Landroid/net/NetworkPolicy;
    if-nez v0, :cond_0

    .line 132
    invoke-static {p1}, Lcom/android/monitor/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    return-object v0
.end method

.method public getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3
    .parameter "template"

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 140
    .local v1, policy:Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    .end local v1           #policy:Landroid/net/NetworkPolicy;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMobilePolicySplit(Ljava/lang/String;)Z
    .locals 6
    .parameter "subscriberId"

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, has3g:Z
    const/4 v1, 0x0

    .line 218
    .local v1, has4g:Z
    iget-object v5, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 219
    .local v3, policy:Landroid/net/NetworkPolicy;
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 220
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    const/4 v0, 0x1

    .line 224
    goto :goto_0

    .line 226
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 231
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    .end local v4           #template:Landroid/net/NetworkTemplate;
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 221
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    .line 63
    :try_start_0
    iget-object v7, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v7}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 68
    .local v5, policies:[Landroid/net/NetworkPolicy;
    const/4 v4, 0x0

    .line 69
    .local v4, modified:Z
    iget-object v7, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 70
    move-object v0, v5

    .local v0, arr$:[Landroid/net/NetworkPolicy;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    .line 72
    .local v6, policy:Landroid/net/NetworkPolicy;
    iget-wide v7, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 73
    iput-wide v9, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 74
    const/4 v4, 0x1

    .line 76
    :cond_0
    iget-wide v7, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 77
    iput-wide v9, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 78
    const/4 v4, 0x1

    .line 82
    :cond_1
    iget-object v7, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 83
    const/4 v4, 0x1

    .line 70
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0           #arr$:[Landroid/net/NetworkPolicy;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #modified:Z
    .end local v5           #policies:[Landroid/net/NetworkPolicy;
    .end local v6           #policy:Landroid/net/NetworkPolicy;
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "problem reading policies"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 87
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #arr$:[Landroid/net/NetworkPolicy;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #modified:Z
    .restart local v5       #policies:[Landroid/net/NetworkPolicy;
    .restart local v6       #policy:Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v7, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    .end local v6           #policy:Landroid/net/NetworkPolicy;
    :cond_3
    invoke-direct {p0}, Lcom/android/monitor/net/NetworkPolicyEditor;->forceMobilePolicyCombined()Z

    move-result v7

    or-int/2addr v4, v7

    .line 96
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/monitor/net/NetworkPolicyEditor;->writeAsync()V

    .line 97
    :cond_4
    return-void
.end method

.method public setPolicy(Landroid/net/NetworkTemplate;IJJ)V
    .locals 3
    .parameter "template"
    .parameter "cycleDay"
    .parameter "limitBytes"
    .parameter "warningBytes"

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/monitor/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 192
    .local v0, policy:Landroid/net/NetworkPolicy;
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 193
    iput-wide p3, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 194
    iput-wide p5, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 195
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    .line 196
    invoke-virtual {p0}, Lcom/android/monitor/net/NetworkPolicyEditor;->writeAsync()V

    .line 197
    return-void
.end method

.method public setPolicyCycleDay(Landroid/net/NetworkTemplate;I)V
    .locals 3
    .parameter "template"
    .parameter "cycleDay"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/monitor/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 163
    .local v0, policy:Landroid/net/NetworkPolicy;
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 164
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    .line 165
    invoke-virtual {p0}, Lcom/android/monitor/net/NetworkPolicyEditor;->writeAsync()V

    .line 166
    return-void
.end method

.method public setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V
    .locals 3
    .parameter "template"
    .parameter "limitBytes"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/monitor/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 185
    .local v0, policy:Landroid/net/NetworkPolicy;
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 186
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    .line 187
    invoke-virtual {p0}, Lcom/android/monitor/net/NetworkPolicyEditor;->writeAsync()V

    .line 188
    return-void
.end method

.method public write([Landroid/net/NetworkPolicy;)V
    .locals 3
    .parameter "policies"

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "problem writing policies"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeAsync()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/monitor/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 102
    .local v0, policies:[Landroid/net/NetworkPolicy;
    new-instance v1, Lcom/android/monitor/net/NetworkPolicyEditor$1;

    invoke-direct {v1, p0, v0}, Lcom/android/monitor/net/NetworkPolicyEditor$1;-><init>(Lcom/android/monitor/net/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/monitor/net/NetworkPolicyEditor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    return-void
.end method
