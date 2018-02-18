import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/AddressArrayUtils.sol";

contract TestAddressArrayUtils {
  using AddressArrayUtils for address[];

  address[] _a;
  address[] _b;

  function beforeEach() {
    _a.push(address(0x1));
    _a.push(address(0x2));
    _a.push(address(0x3));
    _a.push(address(0x4));

    _b.push(address(0x8));
    _b.push(address(0x9));
    _b.push(address(0x10));
  }

  function testIndexFindsItem() {
    uint result;
    bool ok;
    (result, ok) = _a.index(address(0x2));
    assert(ok == true);
    assert(result == 1);
  }

  function testIndexDoesNotFindItem() {
    uint result;
    bool ok;
    (result, ok) = _a.index(address(0x0));
    assert(ok == false);
    assert(result == 0);
  }

  function testExtendExtends() {
    bool ok = _a.extend(_b);
    assert(ok);
    assert(_a.length == 7);
  }

  function testExtendExtendsEmpty() {
    address[] storage b;
    bool ok = _a.extend(b);
    assert(ok);
    assert(_a.length == 4);
  }

  function testReverseEven() {
    bool ok = _a.reverse();
    assert(ok);
    assert(_a.length == 4);
    assert(_a[0] == address(0x4));
    assert(_a[1] == address(0x3));
    assert(_a[2] == address(0x2));
    assert(_a[3] == address(0x1));
  }

  function testReverseOdd() {
    bool ok = _b.reverse();
    assert(ok);
    assert(_b.length == 3);
    assert(_b[0] == address(0x10));
    assert(_b[1] == address(0x9));
    assert(_b[2] == address(0x8));
  }

}
