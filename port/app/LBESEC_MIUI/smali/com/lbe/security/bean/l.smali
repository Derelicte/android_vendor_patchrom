.class public final Lcom/lbe/security/bean/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/lbe/security/bean/g;

.field public static final b:Lcom/lbe/security/bean/g;

.field public static final c:Lcom/lbe/security/bean/g;

.field public static final d:Lcom/lbe/security/bean/g;

.field public static final e:Lcom/lbe/security/bean/g;

.field public static final f:Ljava/util/List;

.field private static final g:Lcom/lbe/security/bean/k;

.field private static final h:Lcom/lbe/security/bean/k;

.field private static final i:Lcom/lbe/security/bean/k;

.field private static final j:Lcom/lbe/security/bean/k;

.field private static final k:Lcom/lbe/security/bean/k;

.field private static final l:Lcom/lbe/security/bean/k;

.field private static final m:Lcom/lbe/security/bean/k;

.field private static final n:Lcom/lbe/security/bean/k;

.field private static final o:Lcom/lbe/security/bean/k;

.field private static final p:Lcom/lbe/security/bean/k;

.field private static final q:Lcom/lbe/security/bean/k;

.field private static final r:Lcom/lbe/security/bean/k;

.field private static s:Lcom/lbe/security/bean/g;

.field private static t:Lcom/lbe/security/bean/g;

.field private static u:Lcom/lbe/security/bean/g;

.field private static v:Lcom/lbe/security/bean/g;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/lbe/security/bean/k;

    const v2, 0x7f07002a

    const v3, 0x7f07002b

    const v4, 0x7f07002c

    sget-object v6, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    new-array v7, v1, [Ljava/lang/String;

    const-string v5, "android.permission.SEND_SMS"

    aput-object v5, v7, v10

    move v5, v1

    invoke-direct/range {v0 .. v7}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v0, Lcom/lbe/security/bean/l;->g:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const v4, 0x7f07002d

    const v5, 0x7f07002e

    const v6, 0x7f07002f

    sget-object v8, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    new-array v9, v11, [Ljava/lang/String;

    const-string v0, "android.permission.CALL_PHONE"

    aput-object v0, v9, v10

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    aput-object v0, v9, v1

    move v3, v11

    move v7, v1

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->h:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const/16 v3, 0x400

    const v4, 0x7f070030

    const v5, 0x7f070031

    const v6, 0x7f070032

    sget-object v8, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    new-array v9, v1, [Ljava/lang/String;

    const-string v0, "android.permission.READ_PHONE_STATE"

    aput-object v0, v9, v10

    move v7, v11

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->i:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const/16 v3, 0x800

    const v4, 0x7f070033

    const v5, 0x7f070034

    const v6, 0x7f070035

    sget-object v8, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    new-array v9, v1, [Ljava/lang/String;

    const-string v0, "android.permission.MODIFY_AUDIO_SETTINGS"

    aput-object v0, v9, v10

    move v7, v10

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->j:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const v4, 0x7f070045

    const v5, 0x7f070046

    const v6, 0x7f070047

    sget-object v8, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    new-array v9, v11, [Ljava/lang/String;

    const-string v0, "android.permission.READ_SMS"

    aput-object v0, v9, v10

    const-string v0, "android.permission.WRITE_SMS"

    aput-object v0, v9, v1

    move v3, v13

    move v7, v1

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->k:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const/16 v3, 0x8

    const v4, 0x7f070048

    const v5, 0x7f070049

    const v6, 0x7f07004a

    sget-object v8, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    new-array v9, v11, [Ljava/lang/String;

    const-string v0, "android.permission.READ_CONTACTS"

    aput-object v0, v9, v10

    const-string v0, "android.permission.WRITE_CONTACTS"

    aput-object v0, v9, v1

    move v7, v1

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->l:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const/16 v3, 0x10

    const v4, 0x7f07004b

    const v5, 0x7f07004c

    const v6, 0x7f07004d

    sget-object v8, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    new-array v9, v11, [Ljava/lang/String;

    const-string v0, "android.permission.READ_CONTACTS"

    aput-object v0, v9, v10

    const-string v0, "android.permission.WRITE_CONTACTS"

    aput-object v0, v9, v1

    move v7, v1

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->m:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const/16 v3, 0x20

    const v4, 0x7f070036

    const v5, 0x7f070037

    const v6, 0x7f070038

    sget-object v8, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    new-array v9, v11, [Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v0, v9, v10

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v0, v9, v1

    move v7, v1

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->n:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const/16 v3, 0x40

    const v4, 0x7f070039

    const v5, 0x7f07003a

    const v6, 0x7f07003b

    sget-object v8, Lcom/lbe/security/bean/m;->b:Lcom/lbe/security/bean/b;

    new-array v9, v1, [Ljava/lang/String;

    const-string v0, "android.permission.READ_PHONE_STATE"

    aput-object v0, v9, v10

    move v7, v11

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->o:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const/16 v3, 0x80

    const v4, 0x7f07003f

    const v5, 0x7f070040

    const v6, 0x7f070041

    sget-object v8, Lcom/lbe/security/bean/m;->b:Lcom/lbe/security/bean/b;

    new-array v9, v1, [Ljava/lang/String;

    const-string v0, "android.permission.INTERNET"

    aput-object v0, v9, v10

    move v7, v11

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->p:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const/16 v3, 0x100

    const v4, 0x7f070042

    const v5, 0x7f070043

    const v6, 0x7f070044

    sget-object v8, Lcom/lbe/security/bean/m;->b:Lcom/lbe/security/bean/b;

    new-array v9, v1, [Ljava/lang/String;

    const-string v0, "android.permission.INTERNET"

    aput-object v0, v9, v10

    move v7, v11

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->q:Lcom/lbe/security/bean/k;

    new-instance v2, Lcom/lbe/security/bean/k;

    const/16 v3, 0x200

    const v4, 0x7f07004e

    const v5, 0x7f07004f

    const v6, 0x7f070050

    sget-object v8, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    new-array v9, v10, [Ljava/lang/String;

    move v7, v1

    invoke-direct/range {v2 .. v9}, Lcom/lbe/security/bean/k;-><init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V

    sput-object v2, Lcom/lbe/security/bean/l;->r:Lcom/lbe/security/bean/k;

    new-instance v0, Lcom/lbe/security/bean/g;

    const/16 v2, 0x1c

    const v3, 0x7f070024

    new-array v4, v12, [Lcom/lbe/security/bean/k;

    sget-object v5, Lcom/lbe/security/bean/l;->k:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v10

    sget-object v5, Lcom/lbe/security/bean/l;->l:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v1

    sget-object v5, Lcom/lbe/security/bean/l;->m:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v11

    invoke-direct {v0, v2, v3, v4}, Lcom/lbe/security/bean/g;-><init>(II[Lcom/lbe/security/bean/k;)V

    sput-object v0, Lcom/lbe/security/bean/l;->s:Lcom/lbe/security/bean/g;

    new-instance v0, Lcom/lbe/security/bean/g;

    const/16 v2, 0x20

    const v3, 0x7f070025

    new-array v4, v1, [Lcom/lbe/security/bean/k;

    sget-object v5, Lcom/lbe/security/bean/l;->n:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v10

    invoke-direct {v0, v2, v3, v4}, Lcom/lbe/security/bean/g;-><init>(II[Lcom/lbe/security/bean/k;)V

    sput-object v0, Lcom/lbe/security/bean/l;->t:Lcom/lbe/security/bean/g;

    new-instance v0, Lcom/lbe/security/bean/g;

    const/16 v2, 0x40

    const v3, 0x7f070026

    new-array v4, v1, [Lcom/lbe/security/bean/k;

    sget-object v5, Lcom/lbe/security/bean/l;->o:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v10

    invoke-direct {v0, v2, v3, v4}, Lcom/lbe/security/bean/g;-><init>(II[Lcom/lbe/security/bean/k;)V

    sput-object v0, Lcom/lbe/security/bean/l;->u:Lcom/lbe/security/bean/g;

    new-instance v0, Lcom/lbe/security/bean/g;

    const/16 v2, 0x180

    const v3, 0x7f070027

    new-array v4, v11, [Lcom/lbe/security/bean/k;

    sget-object v5, Lcom/lbe/security/bean/l;->p:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v10

    sget-object v5, Lcom/lbe/security/bean/l;->q:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v3, v4}, Lcom/lbe/security/bean/g;-><init>(II[Lcom/lbe/security/bean/k;)V

    sput-object v0, Lcom/lbe/security/bean/l;->v:Lcom/lbe/security/bean/g;

    new-instance v0, Lcom/lbe/security/bean/g;

    const/16 v2, 0x200

    const v3, 0x7f070029

    new-array v4, v1, [Lcom/lbe/security/bean/k;

    sget-object v5, Lcom/lbe/security/bean/l;->r:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v10

    invoke-direct {v0, v2, v3, v4}, Lcom/lbe/security/bean/g;-><init>(II[Lcom/lbe/security/bean/k;)V

    sput-object v0, Lcom/lbe/security/bean/l;->a:Lcom/lbe/security/bean/g;

    new-instance v0, Lcom/lbe/security/bean/g;

    const/16 v2, 0x7c

    const v3, 0x7f070028

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/lbe/security/bean/k;

    sget-object v5, Lcom/lbe/security/bean/l;->k:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v10

    sget-object v5, Lcom/lbe/security/bean/l;->l:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v1

    sget-object v5, Lcom/lbe/security/bean/l;->m:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v11

    sget-object v5, Lcom/lbe/security/bean/l;->n:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v12

    sget-object v5, Lcom/lbe/security/bean/l;->o:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v13

    invoke-direct {v0, v2, v3, v4}, Lcom/lbe/security/bean/g;-><init>(II[Lcom/lbe/security/bean/k;)V

    sput-object v0, Lcom/lbe/security/bean/l;->b:Lcom/lbe/security/bean/g;

    new-instance v0, Lcom/lbe/security/bean/g;

    const/16 v2, 0xc03

    const v3, 0x7f070023

    new-array v4, v13, [Lcom/lbe/security/bean/k;

    sget-object v5, Lcom/lbe/security/bean/l;->g:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v10

    sget-object v5, Lcom/lbe/security/bean/l;->h:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v1

    sget-object v5, Lcom/lbe/security/bean/l;->i:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v11

    sget-object v5, Lcom/lbe/security/bean/l;->j:Lcom/lbe/security/bean/k;

    aput-object v5, v4, v12

    invoke-direct {v0, v2, v3, v4}, Lcom/lbe/security/bean/g;-><init>(II[Lcom/lbe/security/bean/k;)V

    sput-object v0, Lcom/lbe/security/bean/l;->c:Lcom/lbe/security/bean/g;

    new-instance v0, Lcom/lbe/security/bean/g;

    const/16 v2, 0xdff

    const/16 v3, 0x9

    new-array v3, v3, [Lcom/lbe/security/bean/k;

    sget-object v4, Lcom/lbe/security/bean/l;->g:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v10

    sget-object v4, Lcom/lbe/security/bean/l;->h:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v1

    sget-object v4, Lcom/lbe/security/bean/l;->i:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v11

    sget-object v4, Lcom/lbe/security/bean/l;->j:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v12

    sget-object v4, Lcom/lbe/security/bean/l;->k:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v13

    const/4 v4, 0x5

    sget-object v5, Lcom/lbe/security/bean/l;->l:Lcom/lbe/security/bean/k;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/lbe/security/bean/l;->m:Lcom/lbe/security/bean/k;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/lbe/security/bean/l;->n:Lcom/lbe/security/bean/k;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Lcom/lbe/security/bean/l;->o:Lcom/lbe/security/bean/k;

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v10, v3}, Lcom/lbe/security/bean/g;-><init>(II[Lcom/lbe/security/bean/k;)V

    sput-object v0, Lcom/lbe/security/bean/l;->d:Lcom/lbe/security/bean/g;

    new-instance v0, Lcom/lbe/security/bean/g;

    const/16 v2, 0xfff

    const/16 v3, 0xa

    new-array v3, v3, [Lcom/lbe/security/bean/k;

    sget-object v4, Lcom/lbe/security/bean/l;->g:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v10

    sget-object v4, Lcom/lbe/security/bean/l;->h:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v1

    sget-object v1, Lcom/lbe/security/bean/l;->i:Lcom/lbe/security/bean/k;

    aput-object v1, v3, v11

    sget-object v1, Lcom/lbe/security/bean/l;->j:Lcom/lbe/security/bean/k;

    aput-object v1, v3, v12

    sget-object v1, Lcom/lbe/security/bean/l;->k:Lcom/lbe/security/bean/k;

    aput-object v1, v3, v13

    const/4 v1, 0x5

    sget-object v4, Lcom/lbe/security/bean/l;->l:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v1

    const/4 v1, 0x6

    sget-object v4, Lcom/lbe/security/bean/l;->m:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v1

    const/4 v1, 0x7

    sget-object v4, Lcom/lbe/security/bean/l;->n:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v1

    const/16 v1, 0x8

    sget-object v4, Lcom/lbe/security/bean/l;->o:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v1

    const/16 v1, 0x9

    sget-object v4, Lcom/lbe/security/bean/l;->r:Lcom/lbe/security/bean/k;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v10, v3}, Lcom/lbe/security/bean/g;-><init>(II[Lcom/lbe/security/bean/k;)V

    sput-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lbe/security/bean/l;->f:Ljava/util/List;

    sget-object v1, Lcom/lbe/security/bean/l;->b:Lcom/lbe/security/bean/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/bean/l;->f:Ljava/util/List;

    sget-object v1, Lcom/lbe/security/bean/l;->c:Lcom/lbe/security/bean/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/bean/l;->f:Ljava/util/List;

    sget-object v1, Lcom/lbe/security/bean/l;->a:Lcom/lbe/security/bean/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
