using GLib;
using Ricin;

public class Ricin.ContactRequest : IRequest, Object {
  /**
  * The request contact's identifier built from the public key.
  **/
  public Identifier? id { get; internal set; default = null; }
  
  /**
  * The contact request message.
  **/
  public string request_message { get; internal set; default = ""; }

  /**
  * Construct a new contact request.
  * @param {string} public_key - The contact public key, used to build an Identifier.
  * @param {string} message - The contact request message.
  **/
  public ContactRequest (string public_key, string message) {
    this.id = new Identifier (public_key);
    this.request_message = message;
  }
}
