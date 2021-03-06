<?php

namespace app\models;

use Yii;
use yii\db\ActiveRecord;
use yii\web\IdentityInterface;

/**
 * This is the model class for table "users".
 *
 * @property int $id
 * @property string $username
 * @property string $password
 * @property string $auth_key
 * @property string $name
 * @property string $dob
 * @property string $phone
 * @property int $role
 * @property string $address
 * @property string $email
 * @property int $status
 *
 * @property DiscountProduct[] $discountProducts
 * @property Product[] $products
 * @property SaleOrder[] $saleOrders
 */
class Users extends ActiveRecord implements IdentityInterface
{

    //public $id;
//    public $username;
//    public $password;
//    public $authKey;
//    public $accessToken;

    const ADMIN = 1;
    const QUANLY = 2;
    const NHANVIEN = 3;
    const KHACH = 4;
    
    const CO = 1;
    const KHONG = 0;
    
    private static $users = [
//        '100' => [
//            'id' => '100',
//            'username' => 'admin',
//            'password' => 'admin',
//            'authKey' => 'test100key',
//            'accessToken' => '100-token',
//        ],
//        '101' => [
//            'id' => '101',
//            'username' => 'demo',
//            'password' => 'demo',
//            'authKey' => 'test101key',
//            'accessToken' => '101-token',
//        ],
    ];

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['username', 'password', 'auth_key', 'name', 'phone', 'address', 'email'], 'string'],
            [['dob'], 'safe'],
            [['role', 'status'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => 'Tên đăng nhập',
            'password' => 'Mật khẩu',
            'auth_key' => 'Mã CT',
            'name' => 'Họ & Tên',
            'dob' => 'Ngày sinh',
            'phone' => 'Số điện thoại',
            'role' => 'Quyền',
            'address' => 'Địa chỉ',
            'email' => 'Email',
            'status' => 'Trạng thái',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDiscountProducts()
    {
        return $this->hasMany(DiscountProduct::className(), ['created_uid' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProducts()
    {
        return $this->hasMany(Product::className(), ['created_uid' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSaleOrders()
    {
        return $this->hasMany(SaleOrder::className(), ['id_user' => 'id']);
    }

    /**
     * {@inheritdoc}
     */
    public static function findIdentity($id)
    {
        return isset(self::$users[$id]) ? new static(self::$users[$id]) : null;
    }

    /**
     * {@inheritdoc}
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {
        foreach (self::$users as $user) {
            if ($user['accessToken'] === $token) {
                return new static($user);
            }
        }

        return null;
    }

    /**
     * Finds user by username
     *
     * @param string $username
     * @return static|null
     */
    public static function findByUsername($username)
    {
        foreach (self::$users as $user) {
            if (strcasecmp($user['username'], $username) === 0) {
                return new static($user);
            }
        }

        return null;
    }

    /**
     * {@inheritdoc}
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * {@inheritdoc}
     */
    public function getAuthKey()
    {
        return $this->auth_key;
    }

    /**
     * {@inheritdoc}
     */
    public function validateAuthKey($authKey)
    {
        return $this->authKey === $authKey;
    }

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return bool if password provided is valid for current user
     */
    public function validatePassword($password)
    {
        return $this->password === $password;
    }
    
    public function formatForSaveUsers($post){
        
        $this->username = ($post['username']) ? $post['username'] : '';
        $this->password = ($post['password']) ? $post['password'] : '';
        $this->auth_key = Yii::$app->security->generateRandomString();
        $this->name = ($post['name']) ? $post['name'] : '';
        $this->dob = ($post['dob']) ? ($post['dob']) : '';
        $this->phone = ($post['phone']) ? $post['phone'] : '';
        $this->role = ($post['role']) ? $post['role'] : '4';
        $this->address = ($post['address']) ? $post['address'] : '';
        $this->email = ($post['email']) ? $post['email'] : '';
        $this->status = ($post['status']) ? $post['status'] : '1';
    }
    
    public static function findUsers($username,$password){
        $let = Users::findOne(['username' => $username],['password' == $password]);
        if($let == ""){
            return false;
        }
        return $let;
    }
    public function findUsersById($id){
        $let = Users::findOne(['id' => $id]);
        if($let == ""){
            return false;
        }
        return $let;
    }
    
    public function getArrayRole(){
        return $arrayName = array(
            Users::ADMIN => 'admin',
            Users::QUANLY => 'Quản lý',
            Users::NHANVIEN => 'Nhân viên',
            Users::KHACH => 'Khách hàng',
        );
    }
    public function getArrayStatus(){
        return $arrayName = array(
            Users::CO => 'Còn hoạt động',
            Users::KHONG => 'Không hoạt động',
        );
    }
    public function getRole(){
        $user = new Users();
        $aRole = $user->getArrayRole();
        return ($aRole[$this->role]) ? $aRole[$this->role] : '';
    }
    public function getStatus(){
        $user = new Users();
        $aStatus = $user->getArrayStatus();
        return ($aStatus[$this->status]) ? $aStatus[$this->status] : '';
    }
    public function idLogged(){
        if(isset($_SESSION['ID_USER'])){
            return $_SESSION['ID_USER'];
        }
        return false;
    }
    public static function logout(){
        unset($_SESSION['ID_USER']);
    }
    
    public function getRoleUserLogged(){
        $user = new Users();
        if($user->idLogged()){
            $id = $user->idLogged();
            return Users::findIdentity($id);
        }
        return false;
    }

    public static function HasUserName($username){
        $Users = Users::find()->where(['username' => $username])->all();
        if($Users){
             return true;
        }
        return false;
    }
    
    public static function CreateMessage($typemessage, $info){
        $_SESSION['message'][$typemessage] = $info;
    }
    public static function CheckMessage(){
        if(isset($_SESSION['message']['danger'])){
            ?>
            <div class="alert alert-danger alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Thất bại !</strong> <?= $_SESSION['message']['danger'] ?>
              </div>
            <?php
            unset($_SESSION['message']['danger']);
        }
        if(isset($_SESSION['message']['success'])){
            ?>
            <div class="alert alert-success alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Thành công !</strong> <?= $_SESSION['message']['success'] ?>
              </div>
            <?php
            unset($_SESSION['message']['success']);
        }
        
        if(isset($_SESSION['message']['info'])){
            ?>
            <div class="alert alert-info alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Thông tin !</strong> <?= $_SESSION['message']['info'] ?>
              </div>
            <?php
            unset($_SESSION['message']['info']);
        }
        
        if(isset($_SESSION['message']['warning'])){
            ?>
            <div class="alert alert-warning alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Cảnh báo !</strong> <?= $_SESSION['message']['warning'] ?>
              </div>
            <?php
            unset($_SESSION['message']['warning']);
        }
        
    }
}
