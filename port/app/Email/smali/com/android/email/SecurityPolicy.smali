.class public Lcom/android/email/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SecurityPolicy$PolicyAdmin;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/email/SecurityPolicy;


# instance fields
.field private final mAdminName:Landroid/content/ComponentName;

.field private mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 76
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 77
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    .line 78
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 79
    return-void
.end method

.method static findShortestExpiration(Landroid/content/Context;)J
    .locals 12
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    .line 661
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "passwordExpirationDays>0"

    const/4 v4, 0x0

    const-string v5, "passwordExpirationDays ASC"

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 664
    .local v8, policyId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    move-wide v0, v10

    .line 665
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Policy;->getAccountIdWithPolicyKey(Landroid/content/Context;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    .locals 3
    .parameter "context"

    .prologue
    .line 65
    const-class v1, Lcom/android/email/SecurityPolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/email/SecurityPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onDeviceAdminReceiverMessage(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 707
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    .line 708
    .local v0, instance:Lcom/android/email/SecurityPolicy;
    packed-switch p1, :pswitch_data_0

    .line 726
    :goto_0
    return-void

    .line 710
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 713
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 718
    :pswitch_2
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 720
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/NotificationController;->cancelPasswordExpirationNotifications()V

    goto :goto_0

    .line 723
    :pswitch_3
    iget-object v1, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/SecurityPolicy;->onPasswordExpiring(Landroid/content/Context;)V

    goto :goto_0

    .line 708
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onPasswordExpiring(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 628
    invoke-static {p1}, Lcom/android/email/SecurityPolicy;->findShortestExpiration(Landroid/content/Context;)J

    move-result-wide v3

    .line 631
    .local v3, nextExpiringAccountId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-nez v8, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 637
    .local v0, expirationDate:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v5, v0, v8

    .line 638
    .local v5, timeUntilExpiration:J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_2

    const/4 v2, 0x1

    .line 639
    .local v2, expired:Z
    :goto_1
    if-nez v2, :cond_3

    .line 642
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/android/email/NotificationController;->showPasswordExpiringNotification(J)V

    goto :goto_0

    .line 638
    .end local v2           #expired:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 646
    .restart local v2       #expired:Z
    :cond_3
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/email/SecurityPolicy;->wipeExpiredAccounts(Landroid/content/Context;Lcom/android/email/Controller;)Z

    move-result v7

    .line 647
    .local v7, wiped:Z
    if-eqz v7, :cond_0

    .line 648
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/android/email/NotificationController;->showPasswordExpiredNotification(J)V

    goto :goto_0
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "accountId"
    .parameter "newState"

    .prologue
    .line 480
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 481
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 482
    invoke-static {p0, v0, p3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 484
    :cond_0
    return-void
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 495
    if-eqz p2, :cond_0

    .line 496
    iget v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 500
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 501
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 503
    return-void

    .line 498
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    iget v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    goto :goto_0
.end method

.method static wipeExpiredAccounts(Landroid/content/Context;Lcom/android/email/Controller;)Z
    .locals 13
    .parameter "context"
    .parameter "controller"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 677
    const/4 v12, 0x0

    .line 678
    .local v12, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "passwordExpirationDays>0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 681
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 683
    .local v10, policyId:J
    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/Policy;->getAccountIdWithPolicyKey(Landroid/content/Context;J)J

    move-result-wide v7

    .line 684
    .local v7, accountId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    .line 685
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 686
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v6, :cond_0

    .line 688
    const/4 v0, 0x1

    invoke-static {p0, v6, v0}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 690
    invoke-virtual {p1, v7, v8}, Lcom/android/email/Controller;->deleteSyncedDataSync(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    const/4 v12, 0x1

    goto :goto_0

    .line 696
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v7           #accountId:J
    .end local v10           #policyId:J
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 698
    return v12

    .line 696
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public clearNotification()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/NotificationController;->cancelSecurityNeededNotification()V

    .line 543
    return-void
.end method

.method public clearUnsupportedPolicies(Lcom/android/emailcommon/provider/Policy;)Lcom/android/emailcommon/provider/Policy;
    .locals 2
    .parameter "policy"

    .prologue
    .line 265
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 267
    .local v0, encryptionStatus:I
    if-nez v0, :cond_0

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 275
    .end local v0           #encryptionStatus:I
    :cond_0
    return-object p1
.end method

.method computeAggregatePolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 13
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const v12, 0x7fffffff

    const/high16 v11, -0x8000

    const/4 v10, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    .local v8, policiesFound:Z
    new-instance v6, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 109
    .local v6, aggregate:Lcom/android/emailcommon/provider/Policy;
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 110
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 111
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 112
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 113
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 114
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 115
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 116
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 117
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 122
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 124
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 126
    .local v7, c:Landroid/database/Cursor;
    new-instance v9, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 128
    .local v9, policy:Lcom/android/emailcommon/provider/Policy;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    invoke-virtual {v9, v7}, Lcom/android/emailcommon/provider/Policy;->restore(Landroid/database/Cursor;)V

    .line 130
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "Email/SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aggregate from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 135
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 136
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-lez v0, :cond_1

    .line 137
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 140
    :cond_1
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-lez v0, :cond_2

    .line 141
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 144
    :cond_2
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-lez v0, :cond_3

    .line 145
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 148
    :cond_3
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-lez v0, :cond_4

    .line 149
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 152
    :cond_4
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-lez v0, :cond_5

    .line 153
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 156
    :cond_5
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 157
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 158
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 162
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 164
    if-eqz v8, :cond_f

    .line 166
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-ne v0, v11, :cond_7

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 167
    :cond_7
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v0, v11, :cond_8

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 168
    :cond_8
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-ne v0, v12, :cond_9

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 169
    :cond_9
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-ne v0, v12, :cond_a

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 170
    :cond_a
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ne v0, v11, :cond_b

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 171
    :cond_b
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-ne v0, v12, :cond_c

    .line 172
    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 173
    :cond_c
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ne v0, v11, :cond_d

    .line 174
    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 175
    :cond_d
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 176
    const-string v0, "Email/SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated Aggregate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v6           #aggregate:Lcom/android/emailcommon/provider/Policy;
    :cond_e
    :goto_1
    return-object v6

    .line 162
    .restart local v6       #aggregate:Lcom/android/emailcommon/provider/Policy;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 180
    :cond_f
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 181
    const-string v0, "Email/SecurityPolicy"

    const-string v1, "Calculated Aggregate: no policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_10
    sget-object v6, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    goto :goto_1
.end method

.method deleteSecuredAccounts(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 589
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 591
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "policyKey IS NOT NULL AND policyKey!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 594
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "Email/SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Email administration disabled; deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secured account(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->deleteAccountSync(JLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 601
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 603
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/SecurityPolicy;->policiesUpdated(J)V

    .line 604
    return-void
.end method

.method public getAdminComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public declared-synchronized getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I
    .locals 14
    .parameter "policy"

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object p1

    .line 357
    :cond_0
    sget-object v10, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    if-ne p1, v10, :cond_2

    .line 358
    const/4 v7, 0x0

    .line 425
    :cond_1
    :goto_0
    return v7

    .line 360
    :cond_2
    const/4 v7, 0x0

    .line 361
    .local v7, reasons:I
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 362
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 364
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-lez v10, :cond_3

    .line 365
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-ge v10, v11, :cond_3

    .line 366
    or-int/lit8 v7, v7, 0x4

    .line 369
    :cond_3
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-lez v10, :cond_5

    .line 370
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v10

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordQuality()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 371
    or-int/lit8 v7, v7, 0x4

    .line 373
    :cond_4
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v10

    if-nez v10, :cond_5

    .line 374
    or-int/lit8 v7, v7, 0x4

    .line 377
    :cond_5
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-lez v10, :cond_6

    .line 379
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v10

    iget v12, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    .line 380
    or-int/lit8 v7, v7, 0x2

    .line 383
    :cond_6
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-lez v10, :cond_9

    .line 385
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 386
    .local v0, currentTimeout:J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_7

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-lez v10, :cond_8

    .line 388
    :cond_7
    or-int/lit8 v7, v7, 0x4

    .line 391
    :cond_8
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 392
    .local v4, expirationDate:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v4, v10

    .line 393
    .local v8, timeUntilExpiration:J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_d

    const/4 v6, 0x1

    .line 394
    .local v6, expired:Z
    :goto_1
    if-eqz v6, :cond_9

    .line 395
    or-int/lit8 v7, v7, 0x4

    .line 398
    .end local v0           #currentTimeout:J
    .end local v4           #expirationDate:J
    .end local v6           #expired:Z
    .end local v8           #timeUntilExpiration:J
    :cond_9
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-lez v10, :cond_a

    .line 399
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ge v10, v11, :cond_a

    .line 401
    or-int/lit8 v7, v7, 0x2

    .line 404
    :cond_a
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-lez v10, :cond_b

    .line 405
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ge v10, v11, :cond_b

    .line 406
    or-int/lit8 v7, v7, 0x4

    .line 409
    :cond_b
    iget-boolean v10, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v10, :cond_c

    .line 410
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 411
    .local v3, encryptionStatus:I
    const/4 v10, 0x3

    if-eq v3, v10, :cond_c

    .line 412
    or-int/lit8 v7, v7, 0x8

    .line 415
    .end local v3           #encryptionStatus:I
    :cond_c
    iget-boolean v10, p1, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 416
    or-int/lit8 v7, v7, 0x2

    goto/16 :goto_0

    .line 393
    .restart local v0       #currentTimeout:J
    .restart local v4       #expirationDate:J
    .restart local v8       #timeUntilExpiration:J
    :cond_d
    const/4 v6, 0x0

    goto :goto_1

    .line 425
    .end local v0           #currentTimeout:J
    .end local v4           #expirationDate:J
    .end local v8           #timeUntilExpiration:J
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public isActive(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 4
    .parameter "policy"

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I

    move-result v0

    .line 287
    .local v0, reasons:I
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActive for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .local v1, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_5

    .line 290
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :goto_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 295
    const-string v2, "no_admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 298
    const-string v2, "config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 301
    const-string v2, "password "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    .line 304
    const-string v2, "encryption "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_3
    const-string v2, "Email/SecurityPolicy"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_4
    if-nez v0, :cond_6

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 292
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_5
    const-string v2, "FALSE -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 308
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isActiveAdmin()Z
    .locals 3

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 568
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupported(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 2
    .parameter "policy"

    .prologue
    .line 238
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 240
    .local v0, encryptionStatus:I
    if-nez v0, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 248
    .end local v0           #encryptionStatus:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method onAdminEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 611
    if-nez p1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/email/SecurityPolicy;->deleteSecuredAccounts(Landroid/content/Context;)V

    .line 614
    :cond_0
    return-void
.end method

.method public policiesRequired(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    .line 514
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 516
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 517
    :cond_0
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 518
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 519
    const-string v2, "Email/SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policiesRequired for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": none"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 534
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/NotificationController;->showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 521
    :cond_2
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    .line 522
    .local v1, policy:Lcom/android/emailcommon/provider/Policy;
    if-nez v1, :cond_3

    .line 523
    const-string v2, "Email/SecurityPolicy"

    const-string v3, "No policy??"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 525
    :cond_3
    const-string v2, "Email/SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policiesRequired for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized policiesUpdated(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 211
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reducePolicies()V
    .locals 2

    .prologue
    .line 221
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "Email/SecurityPolicy"

    const-string v1, "reducePolicies"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/SecurityPolicy;->policiesUpdated(J)V

    .line 225
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 226
    return-void
.end method

.method public remoteWipe()V
    .locals 3

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 551
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    const-string v1, "Email"

    const-string v2, "Could not remote wipe because not device admin."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActivePolicies()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 436
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 438
    .local v0, aggregatePolicy:Lcom/android/emailcommon/provider/Policy;
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    if-ne v0, v2, :cond_2

    .line 439
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 440
    const-string v2, "Email/SecurityPolicy"

    const-string v3, "setActivePolicies: none, remove admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 443
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 445
    const-string v2, "Email/SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActivePolicies: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_3
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordQuality()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 450
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 452
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 454
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 456
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 459
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 465
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 466
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 467
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 469
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 472
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method
