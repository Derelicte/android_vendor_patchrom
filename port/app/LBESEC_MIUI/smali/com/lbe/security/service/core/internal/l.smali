.class public final Lcom/lbe/security/service/core/internal/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x18

    const/16 v5, 0x17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_adjustStreamVolume"

    sget v3, Lcom/lbe/security/service/core/internal/x;->a:I

    invoke-direct {v1, v2, v3, v6}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_playSoundEffect"

    sget v3, Lcom/lbe/security/service/core/internal/x;->b:I

    invoke-direct {v1, v2, v3, v5}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_playSoundEffectVolume"

    sget v3, Lcom/lbe/security/service/core/internal/x;->c:I

    invoke-direct {v1, v2, v3, v5}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_setBluetoothScoOn"

    sget v3, Lcom/lbe/security/service/core/internal/x;->d:I

    invoke-direct {v1, v2, v3, v5}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_setMode"

    sget v3, Lcom/lbe/security/service/core/internal/x;->e:I

    const/16 v4, 0x19

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_setRingerMode"

    sget v3, Lcom/lbe/security/service/core/internal/x;->f:I

    invoke-direct {v1, v2, v3, v5}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_setSpeakerphoneOn"

    sget v3, Lcom/lbe/security/service/core/internal/x;->g:I

    invoke-direct {v1, v2, v3, v5}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_setStreamMute"

    sget v3, Lcom/lbe/security/service/core/internal/x;->h:I

    invoke-direct {v1, v2, v3, v6}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_setStreamSolo"

    sget v3, Lcom/lbe/security/service/core/internal/x;->i:I

    invoke-direct {v1, v2, v3, v6}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_setStreamVolume"

    sget v3, Lcom/lbe/security/service/core/internal/x;->j:I

    invoke-direct {v1, v2, v3, v6}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_startBluetoothSco"

    sget v3, Lcom/lbe/security/service/core/internal/x;->k:I

    invoke-direct {v1, v2, v3, v5}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/l;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_stopBluetoothSco"

    sget v3, Lcom/lbe/security/service/core/internal/x;->l:I

    invoke-direct {v1, v2, v3, v5}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
